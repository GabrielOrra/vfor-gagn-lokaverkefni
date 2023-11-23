import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { delete_from_cart } from '../db/delete/cart.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get delete page
router.get('/', (req, res) => {
  res.redirect('/');
});

// post delete page
router.post('/', (req, res) => {
  const user = 1;
  delete_from_cart(dbFile, user, req.body.comic);
  res.redirect('/cart');
});

export { router } ;