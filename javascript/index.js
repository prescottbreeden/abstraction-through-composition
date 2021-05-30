const express = require('express');

const app = express();
app.get('/', (req, res) => {
  return res.send('Cats and Kittens, and Dogs and Puppies, oh my?!')
});

// --[ CATS ]-----------
app.get('/api/cats', (req, res) => {
  return res.send('get all')
});

app.get('/api/cats/:id', (req, res) => {
  return res.send('get one')
});

app.post('/api/cats', (req, res) => {
  return res.send('create new')
});

app.put('/api/cats/:id', (req, res) => {
  return res.send('update one')
});

app.patch('/api/cats/:id', (req, res) => {
  return res.send('update one')
});

// --[ KITTENS ]-----------
app.get('/api/kittens', (req, res) => {
  return res.send('get all')
});

app.get('/api/kittens/:id', (req, res) => {
  return res.send('get one')
});

app.post('/api/kittens', (req, res) => {
  return res.send('create new')
});

app.put('/api/kittens/:id', (req, res) => {
  return res.send('update one')
});

app.patch('/api/kittens/:id', (req, res) => {
  return res.send('update one')
});

// --[ DOGS ]-----------
app.get('/api/dogs', (req, res) => {
  return res.send('get all')
});

app.get('/api/dogs/:id', (req, res) => {
  return res.send('get one')
});

app.post('/api/dogs', (req, res) => {
  return res.send('create new')
});

app.put('/api/dogs/:id', (req, res) => {
  return res.send('update one')
});

app.patch('/api/dogs/:id', (req, res) => {
  return res.send('update one')
});

// --[ PUPPIES ]-----------
app.get('/api/puppies', (req, res) => {
  return res.send('get all')
});

app.get('/api/puppies/:id', (req, res) => {
  return res.send('get one')
});

app.post('/api/puppies', (req, res) => {
  return res.send('create new')
});

app.put('/api/puppies/:id', (req, res) => {
  return res.send('update one')
});

app.patch('/api/puppies/:id', (req, res) => {
  return res.send('update one')
});

app.listen(() => console.log(5000, 'listening on port 5000'))
