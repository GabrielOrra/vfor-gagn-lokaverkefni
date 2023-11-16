import Database from 'better-sqlite3';

export function read_roles(dbFile) {
    const db = new Database(dbFile);
    const stmt = db.prepare('SELECT * FROM roles');
    const roles = stmt.all();

    db.close();
    return roles;
}