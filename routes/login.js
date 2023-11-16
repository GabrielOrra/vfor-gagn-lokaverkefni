import express from 'express';
import path from 'path';
import bcrypt from 'bcrypt';
import { fileURLToPath } from 'url';
import { readUsers } from '../db/select/user.js';

const router = express.Router();

const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

// get login page
router.get('/', (req, res) => {

	const title = 'Login';
	res.render('login', { title });
});

//post login page
router.post('/', (req, res) => {
	const users = readUsers(dbFile, req.body.username);
	console.log(req.body.username);
	console.log(req.body.password);
	console.log("a" + users);
	if (users) {
		const passwordMatch = bcrypt.compareSync(req.body.password, users.password);
		if (passwordMatch) {
			req.session.user = users;
			req.session.isLoggedIn = true;
			console.log(req.session.isLoggedIn);
			res.redirect("/");
			return;
		}
	} else {
		res.redirect('/login');
	}
	
});

export{router};