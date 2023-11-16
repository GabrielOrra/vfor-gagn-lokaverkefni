import Database from 'better-sqlite3';

// create.js
export const createUsers = (dbFile, username, email, password, mobile_phone) => {
	const db = new Database(dbFile);
	const stmt = db.prepare('INSERT INTO Users(username, email, password, mobile_phone) VALUES (?, ?, ?, ?)');
	stmt.run(username, email, password, mobile_phone);
	db.close();
	return true;
};