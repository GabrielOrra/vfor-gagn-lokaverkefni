import express from 'express';
import path from 'path';
import Database from 'better-sqlite3';
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

const db = new Database(dbFile);
const stmt = db.prepare('SELECT * FROM comics');
const comics = stmt.all();


router.get('/', checkAuth, (req, res) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('SELECT * FROM comics');
  const comics = stmt.all();
  console.log(comics)
  
  res.render('index', {user: req.session.user, comics});
});

export { router } ;