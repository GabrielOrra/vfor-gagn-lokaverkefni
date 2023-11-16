import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';


const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

router.get('/', (req, res) => {
  res.render('about');
});

export { router } ;