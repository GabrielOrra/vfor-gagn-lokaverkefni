import Database from 'better-sqlite3';

export function read_cart(dbFile, userId) {
  const db = new Database(dbFile);
  const stmt = db.prepare(`SELECT comics.title AS "title", comics.price AS "price", comics.image AS "image" FROM comics INNER JOIN cart ON comics.id = cart.comic_id\
                        \ INNER JOIN users ON cart.user_id = users.id\
                        \ WHERE users.id = ?`);
  const cart = stmt.all(userId);

  db.close();
  return cart;
}