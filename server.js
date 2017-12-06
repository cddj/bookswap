// Installed packages
var express       = require('express')
var nconf         = require('nconf')
var fs            = require('fs')
var chalk         = require('chalk')
var passport      = require('passport')
var LocalStrategy = require('passport-local').Strategy;
var session       = require("express-session")
var bodyParser    = require("body-parser");

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
      name: 'bookswap'
    },
    server: {
      port: '5000',
      requestLogging: true
    }
  })



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

app.listen(nconf.get('server:port'), () => {
  console.log(chalk.green('bookswap started on port ' + chalk.bold(nconf.get('server:port'))))
})