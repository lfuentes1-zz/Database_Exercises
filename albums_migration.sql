USE codeup_test_db; 

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL,
    record_name VARCHAR(50) NOT NULL,
    release_date YEAR(4) DEFAULT 0000,
    records_sold FLOAT DEFAULT 0,
    record_genre VARCHAR(50) DEFAULT 'NONE',
    PRIMARY KEY (id)
);