import express from 'express';
import bcrypt from 'bcrypt';
import path from 'path';
import { fileURLToPath } from 'url';
import { createUsers } from '../db/create/create.js';

const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

// get register page
router.get('/', (req, res) => {

	const title = 'Register';
	res.render('register', { title });
});

router.post('/', (req, res) => {
	console.log(req.body);
	const passwordHash = bcrypt.hashSync(req.body.password, 10);
	createUsers(dbFile, req.body.username, req.body.email, passwordHash, req.body.mobile_phone);

	res.redirect('/');
});

export{router};