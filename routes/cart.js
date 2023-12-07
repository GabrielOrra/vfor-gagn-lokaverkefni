import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { read_comics } from '../db/read/read_comics.js';
import { read_cart } from '../db/read/read_cart.js';
import { cart_count } from '../db/read/read_cart_count.js';
import { create_cart } from '../db/create/create_cart.js';

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get register page
router.get('/', (req, res) => {
  const comics = read_comics(dbFile);
  const title = 'comics';

  let user = '';
	let isLoggedIn = false;
	if (req.session.isLoggedIn) {
	  user = req.session.user;
	  isLoggedIn = true;
	}

  let cartCount = cart_count(dbFile, user);
  if (!cartCount) {
    cartCount = {};
    cartCount.count = 0;
  }
  res.render('cart', { title, comics, cartCount });
});


export { router } ;