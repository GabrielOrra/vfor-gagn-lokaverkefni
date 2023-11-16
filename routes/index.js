import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';


const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

function checkAuth(req, res, next) {
  if (req.session.user) {
    next();
  } else {
    res.redirect('/login');
  }
}

router.get('/', checkAuth, (req, res) => {
  res.render('index', {user: req.session.user});
});

export { router } ;