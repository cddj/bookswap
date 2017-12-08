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
var db = require('./db');

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

require('./app/routes.js')(app, passport); // load our routes and pass in our app and fully configured passport


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
app.use('/static', express.static("public/static"));

app.listen(nconf.get('server:port'), () => {
  console.log(chalk.green('bookswap started on port ' + chalk.bold('3306')))}); 