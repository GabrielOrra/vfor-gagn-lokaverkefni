import Database from 'better-sqlite3';

export const create_comic_genre = (dbFile, comic_id, genre_id) => {
  console.log(comic_id);
  console.log(genre_id);
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comic_genre(comic_id, genre_id) VALUES (?, ?)');
  stmt.run(comic_id, genre_id);
  db.close();
  return true;
}