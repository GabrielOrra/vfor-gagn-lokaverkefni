import Database from 'better-sqlite3';

export function read_people(dbFile) {
    const db = new Database(dbFile);
    const stmt = db.prepare('SELECT * FROM people');
    const people = stmt.all();

    db.close();
    return people;
}