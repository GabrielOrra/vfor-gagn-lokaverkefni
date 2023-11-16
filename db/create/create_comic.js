import Database from 'better-sqlite3';

export const create_comic = (dbFile, title, isbn, issue_number, summary, page_count, publication_date, image, price, publisher_id) => {
  const db = new Database(dbFile);
  const stmt = db.prepare('INSERT INTO comics(title, isbn, issue_number, summary, page_count, publication_date, image, price, publisher_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)');
  const comic = stmt.run(title, isbn, issue_number, summary, page_count, publication_date, image, price, publisher_id);
  db.close();
  const lastId = comic.lastInsertRowid;
  return lastId;
}