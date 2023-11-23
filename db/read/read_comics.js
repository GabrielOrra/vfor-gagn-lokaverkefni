import Database from 'better-sqlite3';

export function read_comics(dbFile) {
    const db = new Database(dbFile);
    const stmt = db.prepare('SELECT * FROM comics');
    const roles = stmt.all();

    db.close();
    return roles;
}