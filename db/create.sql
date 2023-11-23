CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  mobile_phone VARCHAR(255),
  last_login TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE countries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name INTEGER NOT NULL,
  war_history INTEGER
);

CREATE TABLE publishers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  country_id INTEGER NOT NULL,
  FOREIGN KEY (country_id) REFERENCES countries(id)
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE people (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  country_id INTEGER,
  FOREIGN KEY (country_id) REFERENCES countries(id)
);

CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE comic_person_role (
  comic_id INTEGER NOT NULL,
  person_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL,
  PRIMARY KEY (comic_id, person_id, role_id),
  FOREIGN KEY (comic_id) REFERENCES comics(id),
  FOREIGN KEY (person_id) REFERENCES people(id),
  FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE comics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  isbn INTEGER UNIQUE,
  issue_number INTEGER,
  summary VARCHAR(255),
  page_count INTEGER,
  publication_date DATE,
  image VARCHAR(255),
  price INTEGER,
  publisher_id INTEGER NOT NULL,
  FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

CREATE TABLE comic_character (
  comic_id INTEGER NOT NULL,
  character_id INTEGER NOT NULL,
  PRIMARY KEY (comic_id, character_id),
  FOREIGN KEY (character_id) REFERENCES characters(id),
  FOREIGN KEY (comic_id) REFERENCES comics(id)
);

CREATE TABLE cart (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  comic_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (comic_id) REFERENCES comics(id)
);


CREATE TABLE genres (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE comic_genre (
  comic_id INTEGER NOT NULL,
  genre_id INTEGER NOT NULL,
  PRIMARY KEY (comic_id, genre_id),
  FOREIGN KEY (comic_id) REFERENCES comics(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE series (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE comic_series (
  comic_id INTEGER NOT NULL,
  series_id INTEGER NOT NULL,
  PRIMARY KEY (comic_id, series_id),
  FOREIGN KEY (series_id) REFERENCES series(id),
  FOREIGN KEY (comic_id) REFERENCES comics(id)
);

