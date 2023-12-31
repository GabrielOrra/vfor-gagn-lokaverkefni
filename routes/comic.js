import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { read_comic } from '../db/read/read_comic_by_id.js';
import { create_cart } from '../db/create/create_cart.js';
import { cart_count } from '../db/read/read_cart_count.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();


router.get('/', (req, res) => {
  const comic = read_comic(dbFile, req.query.id);
  console.log(comic)
  const title = 'Comics';
  const user = 1;
  let cart_count = cart_count(dbFile, user);
  if (!cart_count) {
    cart_count = {};
    cart_count.count = 0;
  }
  res.render('comic', { title, comic, user, cart_count });
});


router.post('/', (req, res) => {
  const comic = req.body.comic;
  console.log(comic);
  const user = 1;
  create_cart(dbFile, user, comic);
  res.redirect('/');
});

export { router } ;