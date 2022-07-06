USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
    );
