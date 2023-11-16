import Database from 'better-sqlite3';

// read.js
export const selectUsers = (dbFile) => {
	const db = new Database(dbFile);
	const stmt = db.prepare('SELECT id, username, email, mobile_phone FROM users');
	const users = stmt.all();
	db.close();
	return users;
};