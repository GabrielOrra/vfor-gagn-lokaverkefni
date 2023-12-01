SELECT publishers.name, countries.name 
FROM publishers
INNER JOIN countries 
ON countries.id = publishers.country_id
WHERE countries.id = 4;

SELECT name FROM series;

SELECT id, name FROM characters;
SELECT id, name FROM series;
SELECT id, name FROM genres;

SELECT id, title FROM comics;

SELECT persons.name,

SELECT comics.title, genres.name
FROM comics
INNER JOIN comic_genre
ON comics.id = comic_genre.comic_id
INNER JOIN genres
ON comic_genre.genre_id = genres.id;

SELECT DISTINCT series.name, genres.name FROM series
INNER JOIN comic_series
ON series.id = comic_series.series_id
INNER JOIN comics
ON comic_series.comic_id = comics.id
INNER JOIN comic_genre 
ON comics.id = comic_genre.comic_id
INNER JOIN genres
ON comic_genre.genre_id = genres.id;

1. /* birta ákveðnar bækur */
SELECT * FROM comics WHERE comics.id = 7;

2. /* birta allar bækur */
SELECT * FROM comics;

3. /* birta allar bækur frá ákveðni seríu */
SELECT comics.title FROM comics
INNER JOIN comic_series
ON comics.id = comic_series.comic_id
INNER JOIN series
ON comic_series.series_id = series.id
WHERE series.name = 'Attack on Titan';

4. /* birta comic og blaðsíðu fjölda */
SELECT title, page_count FROM comics;

5. /* birta allt fólk frá einhverju landi*/
SELECT countries.name AS 'Country', persons.name AS 'Name' 
FROM persons
INNER JOIN countries
ON persons.country_id = countries.id
WHERE countries.name = 'Japan';

6. /* birta allar bækur frá ákveðnum útgefanda */
SELECT publishers.name AS 'Publisher', comics.title AS 'Comic'
FROM publishers
INNER JOIN comics
ON publishers.id = comics.publisher_id
WHERE publishers.name = 'Kodansha';

7. /* birta allar bækur frá ákveðnu landi */
SELECT countries.name AS 'Country', comics.title AS 'Comic'
FROM countries
INNER JOIN publishers
ON countries.id = publishers.country_id
INNER JOIN comics 
ON publishers.id = comics.publisher_id
WHERE countries.name = 'Japan';

8. /* birta bækur út frá character */
SELECT characters.name AS 'Character', comics.title AS 'Comic'
FROM characters INNER JOIN comic_character
ON characters.id = comic_character.character_id
INNER JOIN comics
ON comic_character.comic_id = comics.id
WHERE characters.name LIKE '%Eren%'

9. /* birta allar bækur útfrá ákveðnu genre */
SELECT genres.name AS 'Genres', comics.title AS 'Comics'
FROM genres
INNER JOIN comic_genre
ON genres.id = comic_genre.genre_id
INNER JOIN comics
ON comic_genre.comic_id = comics.id
WHERE genres.name = 'Action';

10. /* birta ákveðna seríu */
SELECT * FROM series WHERE series.Name = 'Jujutsu Kaisen';

11. /* birta bækur útfrá ári */
SELECT title FROM comics
WHERE publication_date >= '2010-01-01' AND publication_date < '2011-01-01';

12. /* birta bækur útfrá manneskju */
SELECT people.name, GROUP_CONCAT(DISTINCT comics.title) FROM people
INNER JOIN comic_person_role
ON people.id = comic_person_role.person_id
INNER JOIN comics
ON comic_person_role.comic_id = comics.id
WHERE people.name = 'Inio Asano';


13. /* CREATE VIEW TIL AÐ BIRTA COMICS OG WRITER, ARTIST, OG CHARACTERS */ 
CREATE VIEW seriesInfo AS
    SELECT
        series.Name AS "Comic Series",
        GROUP_CONCAT (comics. Title) AS "Comic Title"
        DISTINCT GROUP CONCAT(characters .HeroName) AS "Characters"
        DISTINCT GROUP CONCAT(writers.firstName) AS "Writers"
        DISTINCT GROUP_CONCAT(artists .firstName) AS "Artists"
    FROM
        series INNER JOIN comicSerie
        ON series.ID = comicSerie.SeriesID
        INNER JOIN comics
        ON comics.ID = comicSerie.ComicID
        INNER JOIN comicCharacter
        ON comics.ID = comicCharacter. ComicID
        INNER JOIN characters
        ON characters.ID = comicCharacter. CharacterID
        INNER JOIN comicPeopleRole
        ON comics.ID = comicPeopleRole. ComicID
        INNER JOIN roles
        ON roles. ID = comiceopleRole.RoleID
        INNER JOIN (SELECT people.id, people. firstName, people. lastName
                    FROM people INNER JOIN comicPeopleRole
                    ON people.id = comicPeopleRole.peopleID
                    WHERE comiceopleRole.roleID = 9)
                    AS "Writers"
        ON Writers.id = comicPeopleRole.peopleID
        INNER JOIN (SELECT people.id, people. firstName, people. lastName
                    FROM people INNER JOIN comicPeopleRole
                    ON people.id = comicPeopleRole.peopleID
                    WHERE comicPeopleRole.roleID = 10)
                    AS "Artists"
        ON Artists.id = comicPeopleRole.peopleID
    GROUP BY series.Id
    ORDER BY series. Name;
        
        
    SELECT people.id, people. firstName, people. lastName
    FROM people INNER JOIN comicPeopleRole
    ON people.id = comicPeopleRole.peopleID
    WHERE comicPeopleRole.roleID = 9;



SELECT image FROM comics;