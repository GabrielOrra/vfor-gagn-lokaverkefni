import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import { read_genres } from '../db/read/read_genres.js';
import { read_series } from '../db/read/read_series.js';
import { read_characters } from '../db/read/read_characters.js';
import { read_people } from '../db/read/read_people.js';
import { read_roles } from '../db/read/read_roles.js';
import { create_comic } from '../db/create/create_comic.js';
import { create_comic_genre } from '../db/create/comic_genre.js';
import { create_comic_series } from '../db/create/comic_series.js';
import { create_comic_character } from '../db/create/comic_character.js';
import { create_comic_person_role_author } from '../db/create/comic_person_role.js';
import { create_comic_person_role_artist } from '../db/create/comic_person_role.js';


const dbFile = path.join(fileURLToPath(new URL('.', import.meta.url)), '../db/comics.db');

const router = express.Router();

// get create page
router.get('/', (req, res) => {
  const genres = read_genres(dbFile);
  const series = read_series(dbFile);
  const characters = read_characters(dbFile);
  const people = read_people(dbFile);
  const roles = read_roles(dbFile);
  res.render('create_comic', { title: '', genres, series, characters, people, roles});
});

router.post('/', (req, res) => {
  console.log(req.body);
  const lastId = create_comic(dbFile, req.body.name, req.body.isbn, req.body.issue_number,
                              req.body.summary, req.body.page_count, req.body.publication_date,
                              req.body.image, req.body.publisher_id
                              );
  
  if (req.body.genres != null){
  const genres = req.body.genres;
  for (let i = 0; i < genres.length; i++) {
    create_comic_genre(dbFile, lastId, genres[i]);
    console.log(genres);
  }}

  if (req.body.characters != null){
  const characters = req.body.characters;
  for (let i = 0; i < characters.length; i++) {
    create_comic_character(dbFile, lastId, characters[i]);
  }}

  if (req.body.series != null){
  const series = req.body.series;
  for (let i = 0; i < series.length; i++) {
    create_comic_series(dbFile, lastId, series[i])
  }}

  if (req.body.author != null){
  const author = req.body.author;
  for (let i = 0; i < author.length; i++) {
    create_comic_person_role_author(dbFile, lastId, author[i], 1);
  }}

  if (req.body.artist != null){
  const artist = req.body.artist;
  for (let i = 0; i < artist.length; i++) {
    create_comic_person_role_artist(dbFile, lastId, artist[i], 2);
  }}

  res.redirect('/create_comic')
});

export { router } ;