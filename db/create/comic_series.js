import Database from 'better-sqlite3';

export const create_comic_series = (dbFile, comic_id, series_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comic_series(comic_id, series_id) VALUES (?, ?)');
  stmt.run(comic_id, series_id);
  db.close();
  return true;
}