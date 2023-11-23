import Database from 'better-sqlite3';

// delete.js
export const delete_from_cart = (dbFile, user_id, movie_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('DELETE FROM cart WHERE \
                          id = ( SELECT id FROM cart \
                          WHERE user_id = ? AND comic_id = ? LIMIT 1)');
  stmt.run(user_id, comic_id);
  db.close();
  return true;
}