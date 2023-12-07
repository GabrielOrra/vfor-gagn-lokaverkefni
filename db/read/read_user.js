import Database from 'better-sqlite3';

export function read_user(dbFile, user_id) {
  const db = new Database(dbFile);

  const stmt = db.prepare('SELECT COUNT(*) AS "count" FROM cart WHERE user_id = ? GROUP BY user_id;');
  const cart = stmt.get(user_id);

  db.close();

  return cart;
}