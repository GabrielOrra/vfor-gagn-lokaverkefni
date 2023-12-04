import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { read_comic } from '../db/read/read_comic_by_id.js';
import { create_cart } from '../db/create/create_cart.js';
import { read_cart } from '../db/read/read_cart.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();


router.get('/', (req, res) => {
  const title = 'Cart';

  let cart_count = read_cart(dbFile, user);
  if (!cart_count) {
    cart_count = {};
    cart_count.count = 0;
  }
  res.render('comic', { title, comic, user, cart_count });
});

export { router } ;