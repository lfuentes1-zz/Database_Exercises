USE codeup_test_db;

-- CREATE TABLE albums (
--     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     artist_name VARCHAR(50) NOT NULL,
--     record_name VARCHAR(50) NOT NULL,
--     release_date YEAR(4) DEFAULT 0000,
--     records_sold FLOAT DEFAULT 0,
--     record_genre VARCHAR(50) DEFAULT 'NONE',
--     PRIMARY KEY (id)
-- );

SELECT record_name AS 'All Albums'
FROM albums;

UPDATE albums
SET records_sold = records_sold * 2;

SELECT records_sold AS 'Records Sold', record_name AS 'All Albums'
FROM albums;


SELECT record_name AS 'Album Name', release_date AS 'Year Released'
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = 1901
WHERE release_date < 1980;

SELECT record_name AS 'Album Name', release_date AS 'Year Released'
FROM albums
WHERE release_date = 1901;


SELECT record_name as 'Album Name', artist_name AS 'Artist'
FROM albums
WHERE artist_name = 'Michael Jackson';

UPDATE albums
SET artist_name = 'Peter Jackson' 
WHERE artist_name = 'Michael Jackson';

SELECT record_name as 'Album Name', artist_name AS 'Artist'
FROM albums
WHERE artist_name = 'Peter Jackson';