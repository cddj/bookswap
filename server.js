// Installed packages
var express       = require('express')
// var nconf         = require('nconf')
var fs            = require('fs')
var chalk         = require('chalk')
var passport      = require('passport')
var LocalStrategy = require('passport-local').Strategy
var session       = require("express-session")
var bodyParser    = require("body-parser");
var mysql         = require('mysql')


// Local requires
// var db = require('./db');

// Global variables
var app = express();



// Setup nconf to use command line options, then environment variables, than the configuration file
// nconf
//   .argv()
//   .env()
//   .file({ file: 'config.json' })
//   .defaults({
//     database: {
//       host: '127.0.0.1',
//       port: '3306',
//       user: 'root',
//       password: 'root';
//       name: 'bookswap'
//     },
//     server: {
//       port: '5000',
//       requestLogging: true
//     }
//   })

//Connect to database
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'bookswap'
});

connection.connect()

app.post('/login', passport.authenticate('local', { successRedirect: '/',
                                                    failureRedirect: '/login?failed=true' }));

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

app.post('/add', (req, res) => {
  var isbn = req.isbn
  var title = req.title
  var author = req.author
  connection.query('INSERT INTO book ('+ connection.escape(isbn) + ', '+ connection.escape(title) +', ' + connection.escape(author) + ')', function(error) {
    if(error) {
      console.log(error)
    }
  })
})


app.get('/user_inv', (req, res) => {
  // var user_id = ????
  connection.query('SELECT title,author FROM book,inventory WHERE user_id =' + connection.escape(user_id) + 'AND isbn = book_isbn;', function(error, rows) {
        res.send(rows.map(row => row.query_text))
        })
    })

app.get('/user_wishlist', (req, res) => {
  // var user_id = ????
  connection.query('SELECT title,author FROM book,wishlist WHERE user_id =' + connection.escape(user_id) + 'AND isbn = book_isbn;', function(error, rows) {
        res.send(rows.map(row => row.query_text))
      })
  })

app.post('/remove_inv', (req, res) => {
  // var user_id = ????
  var title = req.title
  connection.query('DELETE FROM inventory JOIN book ON isbn=book_isbn WHERE book.title =' + connection.escape(title) + ' AND user_id =' + connection.escape(user_id) + ' LIMIT 1;', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })

app.post('/remove_wish', (req, res) => {
  // var user_id = ????
  var title = req.title
  connection.query('DELETE FROM wishlist JOIN book ON isbn=book_isbn WHERE book.title =' + connection.escape(title) + ' AND user_id =' + connection.escape(user_id) + ' LIMIT 1;', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })


app.post('/update_owner_agree', (req, res) => {
  // var value = ????
  // var owner_id = ????
  // var recipient_id = ????
  // var book_isbn = ????
  var title = req.title
  connection.query('UPDATE swap SET owner_agreed =' + connection.escape(value) +' WHERE owner_id =' + connection.escape(owner_id) + ' AND recipient_id = '+ connection.escape(recipient_id) + ' AND book_isbn  = ' + book_isbn + '; ', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })

app.post('/update_recip_agree', (req, res) => {
  // var value = ????  
  // var owner_id = ????
  // var recipient_id = ????
  // var book_isbn = ????
  var title = req.title
  connection.query('UPDATE swap SET recipient_agreed =' + connection.escape(value) +' WHERE owner_id =' + connection.escape(owner_id) + ' AND recipient_id = '+ connection.escape(recipient_id) + ' AND book_isbn  = ' + connection.escape(book_isbn) + '; ', function(error, rows) {
      res.send(rows.map(row => row.query_text))
      })
  })

app.get('/searching', (req, res) => {
  var title = req.param.name;
  connection.query('SELECT title,author FROM book WHERE title LIKE %' + connection.escape(title) +'%;', function(error, rows) {
    res.send(rows.map(row => row.query_text))
  })
})

app.post('/add_book', (req, res) => {
  var isbn = req.param.isbn
  var title = req.param.title
  var author = req.param.author
  connection.query('INSERT INTO book ('+ connection.escape(isbn) + ', '+ connection.escape(title) +', ' + connection.escape(author) +');')
})

function getUserID(email) {
  connection.get('SELECT id FROM user WHERE email = '+ email, function(error, rows) {
    res.send(rows.map(row => row.query_text))
  })
}

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
    if (err) {
      console.log(err)
    }
  })
})

// Initalize application
app.use(session({ secret: "super secret bookswap magic with a little bit of alchemy" }));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(passport.initialize());
app.use(passport.session());
app.use('/static', express.static("public/static"));


app.listen(3306, () => {
  console.log(chalk.green('bookswap started on port ' + chalk.bold('3306')))}); 