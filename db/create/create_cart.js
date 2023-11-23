import Database from 'better-sqlite3';

// read.js
export const create_cart = (dbFile, user_id, comic_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO cart(user_id, comic_id) VALUES (?, ?)');
  stmt.run(user_id, comic_id);
  db.close();
  return true;
}