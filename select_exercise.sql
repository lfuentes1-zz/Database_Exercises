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

-- The name of all albums by Pink Floyd.
SELECT 'Pink Floyd' AS 'Albums by:';
SELECT record_name FROM albums WHERE artist_name = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'Sgt. Pepper''s' AS 'Record Name:';
SELECT release_date FROM albums WHERE record_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'Nevermind' AS 'Genre for:';
SELECT record_genre, record_name FROM albums WHERE record_name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT '1990s' AS 'Release Date:';
SELECT record_name, release_date FROM albums WHERE release_date >= '1990' AND release_date <= '1999';

-- Which albums had less than 20 million certified sales
SELECT 'Less than 20 mil' AS 'Certified Sales:';
SELECT record_name, records_sold FROM albums WHERE records_sold < 20.0;

-- All the albums in the rock genre. Is this all the rock albums in the table?
SELECT 'Rock' AS 'Genre:';
SELECT record_genre FROM albums WHERE record_genre LIKE '%Rock%';
