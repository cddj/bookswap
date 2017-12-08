//routes.js
// Routes

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
  connection.query('SELECT author,title FROM book,inventory WHERE user_id =' + connection.escape(user_id) + 'AND isbn = book_isbn;', function(error, rows) {
        res.send( rows.map(row => row.query_text))
        })
    })

app.get('/user_wishlist', (req, res) => {
  // var user_id = ????
  connection.query('SELECT author,title FROM book,wishlist WHERE user_id =' + connection.escape(user_id) + 'AND isbn = book_isbn;', function(error, rows) {
        res.send( rows.map(row => row.query_text))
      })
  })

app.post('/remove_inv', (req, res) => {
  // var user_id = ????
  var title = req.title
  connection.query('DELETE FROM inventory JOIN book ON isbn=book_isbn WHERE book.title =' + connection.escape(title) + ' AND user_id =' + connection.escape(user_id) + ' LIMIT 1;', function(error, rows) {
      res.send( rows.map(row => row.query_text))
      })
  })

app.post('/remove_wish', (req, res) => {
  // var user_id = ????
  var title = req.title
  connection.query('DELETE FROM wishlist JOIN book ON isbn=book_isbn WHERE book.title =' + connection.escape(title) + ' AND user_id =' + connection.escape(user_id) + ' LIMIT 1;', function(error, rows) {
      res.send( rows.map(row => row.query_text))
      })
  })


app.post('/update_owner_agree', (req, res) => {
  // var value = ????
  // var owner_id = ????
  // var recipient_id = ????
  // var book_isbn = ????
  var title = req.title
  connection.query('UPDATE swap SET owner_agreed =' + connection.escape(value) +' WHERE owner_id =' + connection.escape(owner_id) + ' AND recipient_id = '+ connection.escape(recipient_id) + ' AND book_isbn  = ' + book_isbn + '; ', function(error, rows) {
      res.send( rows.map(row => row.query_text))
      })
  })

app.post('/update_recip_agree', (req, res) => {
  // var value = ????  
  // var owner_id = ????
  // var recipient_id = ????
  // var book_isbn = ????
  var title = req.title
  connection.query('UPDATE swap SET recipient_agreed =' + connection.escape(value) +' WHERE owner_id =' + connection.escape(owner_id) + ' AND recipient_id = '+ connection.escape(recipient_id) + ' AND book_isbn  = ' + connection.escape(book_isbn) + '; ', function(error, rows) {
      res.send( rows.map(row => row.query_text))
      })
  })
