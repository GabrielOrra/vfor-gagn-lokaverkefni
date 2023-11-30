import Database from 'better-sqlite3';

export function read_comic(dbFile, id) {
  const db = new Database(dbFile);
  const stmt = db.prepare(`SELECT * FROM comics \
                            \ WHERE id = ?`);
  const comic = stmt.get(id);

  db.close();
  return comic;
}