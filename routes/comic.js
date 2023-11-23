import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { read_comics } from '../db/read/read_comics.js';
import { create_cart } from '../db/create/create_cart.js';
import { read_cart } from '../db/read/read_cart.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get register page
router.get('/', (req, res) => {
  const comics = read_comics(dbFile);
  const title = 'Comics';
  const user = 1;
  let cart_count = read_cart(dbFile, user);
  if (!cart_count) {
    cart_count = {};
    cart_count.count = 0;
  }
  res.render('cart', { title, comics, cart_count });
});

router.post('/', (req, res) => {
  const comic = req.body.comic;
  const user = 1;
  create_cart(dbFile, user, comic);
  res.redirect('/cart');
});

export { router } ;