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

-- Albums released after 1991
SELECT record_name AS 'Album Name', release_date AS 'Year Released'
FROM albums
WHERE release_date > 1991;

-- Albums with the genre "disco"
SELECT record_name AS 'Album Name', record_genre AS 'Genre'
FROM albums
WHERE record_genre = 'Disco';

-- Albums by "Whitney Houston" (...or maybe an artist of your choice)
SELECT record_name AS 'Album Name', artist_name AS 'Artist Name'
FROM albums
WHERE artist_name = 'Whitney Houston';
