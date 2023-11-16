import Database from 'better-sqlite3';

export const create_comic_person_role_author = (dbFile, comic_id, person_id, role_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comic_person_role(comic_id, role_id, person_id) VALUES (?, ?, ?)');
  stmt.run(comic_id, role_id, person_id);
  db.close();
  return true;
}

export const create_comic_person_role_artist = (dbFile, comic_id, person_id, role_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comic_person_role(comic_id, role_id, person_id) VALUES (?, ?, ?)');
  stmt.run(comic_id, role_id, person_id);
  db.close();
  return true;
}