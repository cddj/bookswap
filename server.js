// Installed packages
var express       = require('express')
var fs            = require('fs')
var chalk         = require('chalk')
var passport      = require('passport')
var LocalStrategy = require('passport-local').Strategy
var bcrypt        = require('bcrypt')
var nconf         = require('nconf');
var session       = require("express-session")
var bodyParser    = require("body-parser");
var mysql         = require('mysql')


// Local requires
// var db = require('./db');

// Global variables
var app = express();

// Setup Passport.js
passport.use(new LocalStrategy({
    usernameField: 'email'
  },
  function (email, password, done) {
    let user = null;
    connection.query('SELECT * FROM users WHERE email = ' 
      + connection.escape(email) + ';', (error, rows) => {
      if (!error && rows.length) {
        bcrypt.compare(password, rows[0].password_hash, (err, success) => {
          if (success) {
            user = rows[0].id;
            user.email = rows[0].email;
          }
        });
      }
    });
    return done(null, user);
  }
));
passport.serializeUser(function(user, done) {
  return done(null, JSON.stringify(user));
});
passport.deserializeUser(function(userSerialized, done) {
  return done(null, JSON.parse(userSerialized))
})

app.use(session({ secret: "super secret bookswap magic with a little bit of alchemy", 
  resave : true, saveUninitialized: true }));
app.use(passport.initialize());
app.use(passport.session());



// Setup nconf to use command line options, then environment variables, than the configuration file
nconf
  .argv()
  .env()
  .file({ file: 'config.json' })
  .defaults({
    database: {
      host: '127.0.0.1',
      port: '3306',
      user: 'root',
      password: 'root',
      name: 'bookswap'
    },
    server: {
      port: '50000',
      requestLogging: true
    }
  })

//Connect to database
var connection = mysql.createConnection({
  host     : nconf.get('database:host'),
  user     : nconf.get('database:user'),
  port     : nconf.get('database:port'),
  password : nconf.get('database:password'),
  database : nconf.get('database:name')
});

try {
  connection.connect()
  console.log(chalk.green('Connected to ' + nconf.get('database:name')))
} catch (err) {
  console.log(chalk.red('Failed to connect to database.'))
  console.log(err)
}

app.use(bodyParser.urlencoded({ extended: false }));


app.post('/login', passport.authenticate('local', { successRedirect: '/',
                                                    failureRedirect: '/login?failed=true' }));

app.get('/login', (req, res) => {
  res.sendFile('public/login.html', {root: __dirname})
})

// Initalize application
app.use(express.static(__dirname + '/public/static'));


app.post('/register', (req, res) => {
  let hashed_pass = bcrypt.hashSync(req.body.password, 10);
  let email = req.body.email;
  connection.query('INSERT INTO user (email, password_hash) ' +
                   'VALUES (' + connection.escape(email) + ',' 
                   + connection.escape(hashed_pass) + ')');
  getUserID(email, (id) => {
    let user = id;
    user.email = email;
    req.login(user, (err) => {
      if (!err) {
        res.redirect('/')
      }
    })
  })
})

// Enable secure routes
let secure = express.Router()

secure.use((req, res, next) => {
  if (req.isAuthenticated()) {
    next()
  } else {
    res.sendFile(__dirname + '/public/login.html')
  }
});
app.use(secure)

secure.get('/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html')
})

secure.get('/user_inv', (req, res) => {
  var user_id = req.user
  connection.query('SELECT title,author FROM book,inventory WHERE user_id =' 
    + connection.escape(req.user) + 'AND isbn = book_isbn;', function(error, rows) {
          var objs = []
          for (var i = 0;i < rows.length; i++) {
            objs.push({title: rows[i].title, author: rows[i].author});
          }
          res.send(JSON.stringify(objs))
        })
    })

secure.get('/user_wishlist', (req, res) => {
  connection.query('SELECT title,author FROM book,wishlist WHERE user_id =' 
    + connection.escape(req.user) + 'AND isbn = book_isbn;', function(error, rows) {
        var objs = []
        for (var i = 0;i < rows.length; i++) {
          objs.push({title: rows[i].title, author: rows[i].author});
        }
        res.send(JSON.stringify(objs))
      })
  })

secure.post('/remove_inv', (req, res) => {
  var title = req.body.title
  connection.query('DELETE FROM inventory JOIN book ON isbn=book_isbn WHERE book.title =' 
    + connection.escape(title) + ' AND user_id =' + connection.escape(req.user) 
    + ' LIMIT 1;', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })

secure.post('/remove_wish', (req, res) => {
  var user_id = req.user
  var title = req.body.title
  connection.query('DELETE FROM wishlist JOIN book ON isbn=book_isbn WHERE book.title =' 
    + connection.escape(title) + ' AND user_id =' + connection.escape(req.user) 
    + ' LIMIT 1;', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })


secure.post('/update_owner_agree', (req, res) => {
  var value = req.body.value;
  var owner_id = req.body.owner_id;
  var recipient_id = req.body.recipient_id;
  var book_isbn = req.body.book_isbn;
  var title = req.title
  connection.query('UPDATE swap SET owner_agreed =' + connection.escape(value) 
    +' WHERE owner_id =' + connection.escape(owner_id) + ' AND recipient_id = '
    + connection.escape(recipient_id) + ' AND book_isbn  = ' + book_isbn + '; ',
     function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })

secure.post('/update_recip_agree', (req, res) => {
  var value = req.body.value;
  var owner_id = req.body.owner_id;
  var recipient_id = req.body.recipient_id;
  var book_isbn = req.body.book_isbn;
  var title = req.title
  connection.query('UPDATE swap SET recipient_agreed = '
    + connection.escape(value) +' WHERE owner_id =' 
    + connection.escape(owner_id) + ' AND recipient_id = '
    + connection.escape(recipient_id) + ' AND book_isbn  = '
    + connection.escape(book_isbn) + '; ', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })

secure.get('/book/:name', (req, res) => {
  var title = req.name;
  connection.query('SELECT title,author FROM book WHERE title LIKE %' 
    + connection.escape(title) +'%;', function(error, rows) {
    if (!error && rows) {
      var objs = []
      for (var i = 0;i < rows.length; i++) {
        objs.push({title: rows[i].title, author: rows[i].author});
      }
      res.send(JSON.stringify(objs))
    } else {
      res.send('null')
    }
  })
})


function getUserID(email, callback) {
  connection.query('SELECT id FROM user WHERE email = ' 
    + connection.escape(email), function(error, rows) {
    if (!error && rows.length) {
      callback(rows[0].id);
    }
  });
}




app.listen(nconf.get('server:port'), () => {
  console.log(chalk.green('bookswap started on port ' 
    + chalk.bold(nconf.get('server:port'))))}); 