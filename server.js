// Installed packages
var express       = require('express')
var nconf         = require('nconf')
var fs            = require('fs')
var chalk         = require('chalk')
var passport      = require('passport')
var LocalStrategy = require('passport-local').Strategy
var session       = require("express-session")
var bodyParser    = require("body-parser");
var books         = require('google-books-search');
var mysql         = require('mysql')


// Local requires
var db = require('./db');

// Global variables
var app = express();



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
      password: 'root';
      name: 'bookswap'
    },
    server: {
      port: '5000',
      requestLogging: true
    }
  })

//Connect to database
var connection = mysql.createConnection({
  host     : nconf.host,
  user     : nconf.user,
  password : nconf.password,
  database : nconf.name
});

connection.connect()


// Setup Passport.js
passport.use(new LocalStrategy({
    usernameField: 'email'
  },
  function(email, password, done) {
    db.login(email, password, (user, status) => {
      if (status != 'success') {
        return done(null, false, { message: status })
      } else {
        return done(null, user)
      }
    })
  }
));
passport.serializeUser(function(user, done) {
  done(null, user.id);
});
passport.deserializeUser(function(id, done) {
  db.user(id, (user, status) => {
    done(err, user);
  })
})



// Initalize application
app.use(session({ secret: "super secret bookswap magic with a little bit of alchemy" }));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(passport.initialize());
app.use(passport.session());

// Routes
app.use('/static', express.static("public/static"));

app.post('/login', passport.authenticate('local', { successRedirect: '/',
                                                    failureRedirect: '/login?failed=true' });

app.post('/register', (req, res) => {
  db.register(req.body.email, req.body.password, (user, status) => {
    req.login(user, (err) => {
      res.redirect('/')
    })
  })
})

app.get('/login', () => {
  res.sendFile('public/login.html')
})

app.get('*', (req, res) => {
  if (req.isAuthenticated()) {
    res.redirect("/login");
  } else {
    res.sendFile('public/index.html')
  }
});

app.get('/search_new', (req, res) => {
    books.search(res.params.q, function(error, results) {
      if (!error) {
          req.send(results)
      } else {
          console.log(error);
      }
  })
})

app.get('/user_inv' (req, res) => {
  var user_id = ????
  connection.query('SELECT author,title FROM book,inventory WHERE user_id =' + user_id + 'AND isbn = book_isbn;', function(error, rows) {
        res.send( rows.map(row => row.query_text)
        })
    })
})

app.get('/user_wishlist' (req, res) => {
  var user_id = ????
  connection.query('SELECT author,title FROM book,wishlist WHERE user_id =' + user_id + 'AND isbn = book_isbn;', function(error, rows) {
        res.send( rows.map(row => row.query_text)
        })
    })
})

app.get('/remove_inv' (req, res) => {
  var user_id = ????
  var title = req.title
  connection.query('DELETE FROM inventory JOIN book ON isbn=book_isbn WHERE book.title =' + title + ' AND user_id =' + user_id + ' LIMIT 1;', function(error, rows) {
      res.send( rows.map(row => row.query_text)
      })
  })
})



app.listen(nconf.get('server:port'), () => {
  console.log(chalk.green('bookswap started on port ' + chalk.bold(nconf.get('server:port'))))
})