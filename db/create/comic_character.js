import Database from 'better-sqlite3';

export const create_comic_character = (dbFile, comic_id, character_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comic_character(comic_id, character_id) VALUES (?, ?)');
  stmt.run(comic_id, character_id);
  db.close();
  return true;
}