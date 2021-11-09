-- All queries used to create the database and the associated tables
-- All views are created in the view-creation.sql file

-- Create the database for the library system
CREATE DATABASE IF NOT EXISTS Library;

-- Use the Library database
USE Library;

-- Create the Users table
DROP TABLE IF NOT EXISTS Users;
CREATE TABLE Users (
    user_id INT(13) NOT NULL AUTO_INCREMENT,
    card_barcode INT(24), -- May be null if the user does not yet have a card
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    phone_number INT(10) NOT NULL,
    email VARCHAR(65) NOT NULL,
    street_address VARCHAR(100) NOT NULL,
    city VARCHAR(35) NOT NULL,
    province CHAR(2) NOT NULL,
    country CHAR(3) NOT NULL,
    postal_code CHAR(6) NOT NULL,
    date_of_birth DATE NOT NULL,
    fines_owed FLOAT(7,2) NOT NULL DEFAULT(0.00),
    PRIMARY KEY(user_id)
)
ENGINE=InnoDB;

-- To be run after the previous query to ensure unique library card barcodes
ALTER Table Users
    ADD UNIQUE (card_barcode);

-- Create the Book table
DROP TABLE IF NOT EXISTS Book;
CREATE TABLE Book (
    isbn INT(13) NOT NULL,
    title VARCHAR(200) NOT NULL,
    publisher VARCHAR(150) NOT NULL,
    volume INT(3),
    release_year YEAR NOT NULL,
    total_copies INT(3) NOT NULL DEFAULT(0),
    PRIMARY KEY(isbn)
)
ENGINE=InnoDB;

-- Create the Author_ISBN table
DROP TABLE IF NOT EXISTS Author_ISBN;
CREATE TABLE Author_ISBN (
    isbn INT(13) NOT NULL,
    authors_id INT(12) NOT NULL,
    PRIMARY KEY(isbn)
)
ENGINE=InnoDB;

-- Create the Authors table
DROP TABLE IF NOT EXISTS Authors;
CREATE TABLE Authors (
    authors_id INT(12) NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(authors_id)
)
ENGINE=InnoDB;

-- Create the DVD table
DROP TABLE IF NOT EXISTS DVD;
CREATE TABLE DVD (
    dvd_id INT(13) NOT NULL AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    release_year YEAR NOT NULL,
    studio VARCHAR(150) NOT NULL,
    maturity_rating ENUM('G', 'PG', 'PG-13', 'R', 'X') NOT NULL,
    type ENUM('movie', 'short', 'tvepisodes', 'video', 'other') NOT NULL,
    total_copies INT(3) NOT NULL DEFAULT(1),
    PRIMARY KEY(dvd_id)
)
ENGINE = InnoDB;

-- Create the CD table
DROP TABLE IF NOT EXISTS CD;
CREATE TABLE CD (
    cd_id INT(13) NOT NULL AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    studio VARCHAR(100) NOT NULL,
    release_year YEAR NOT NULL,
    explicit BOOLEAN NOT NULL,
    maturity_rating ENUM('G', 'PG', 'PG-13', 'R', 'X') NOT NULL,
    type ENUM('music', 'audiobook', 'educational', 'children', 'other') NOT NULL,
    total_copies INT(3) NOT NULL DEFAULT(1),
    PRIMARY KEY(cd_id)
)
ENGINE = InnoDB;

-- Create the Video_Game table
DROP TABLE IF NOT EXISTS Video_Game;
CREATE TABLE Video_Game (
    video_game_id INT(13) AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    release_year YEAR NOT NULL,
    studio VARCHAR(150) NOT NULL,
    game_category ENUM(
        'action', 
        'action-adventure', 
        'adventure', 
        'role-playing',
        'simulation',
        'strategy',
        'sports',
        'puzzle',
        'idle',
        'educational',
        'children' 
        ) NOT NULL,
    console ENUM('computer', 'playstation', 'xbox', 'wii') NOT NULL,
    maturity_rating ENUM('E', 'E10+', 'T', 'M', 'A', 'RP') NOT NULL,
    total_copies INT(3) NOT NULL DEFAULT(1),
    PRIMARY KEY(video_game_id)
)
ENGINE=InnoDB;

-- Create the Inventory table
DROP TABLE IF NOT EXISTS Inventory;
CREATE TABLE Inventory (
    inventory_id INT(16) NOT NULL AUTO_INCREMENT,
    item_id INT(13) NOT NULL,
    status ENUM('in-stock', 'on-loan', 'in-storage', 'lost') NOT NULL,
    PRIMARY KEY(inventory_id)
)
ENGINE=InnoDB;

-- Create the Transaction table
DROP TABLE IF NOT EXISTS Transaction;
CREATE TABLE Transaction (
    transaction_id INT(13) NOT NULL AUTO_INCREMENT,
    user_id INT(13) NOT NULL,
    inventory_id INT(16) NOT NULL,
    due_date DATE NOT NULL,
    return_status ENUM('on-loan', 'returned', 'overdue') NOT NULL,
    PRIMARY KEY(transaction_id)
)
ENGINE=InnoDB;

-- Create the Fines table
DROP TABLE IF NOT EXISTS Fines;
CREATE TABLE Fines (
    user_id INT(13) NOT NULL,
    amount FLOAT(7,2) NOT NULL,
    inventory_id INT(16) NOT NULL,
    most_recent_increase_amount FLOAT(7,2) NOT NULL,
    most_recent_increase_date DATE NOT NULL,
    first_issued DATE NOT NULL,
    next_increase DATE NOT NULL,
    PRIMARY KEY(inventory_id)
)
ENGINE=InnoDB;

-- Create the DVD_Genre Table
DROP TABLE IF NOT EXISTS DVD_Genre;
CREATE TABLE DVD_Genre (
    dvd_id INT(13) NOT NULL,
    genre_id INT(13) NOT NULL,
    CONSTRAINT unique_tuples UNIQUE (dvd_id, genre_id)
)
ENGINE=InnoDB;

-- Create the CD_Genre Table
DROP TABLE IF NOT EXISTS CD_Genre;
CREATE TABLE CD_Genre (
    cd_id INT(13) NOT NULL,
    genre_id INT(13) NOT NULL,
    CONSTRAINT unique_tuples UNIQUE (cd_id, genre_id)
)
ENGINE=InnoDB;

-- Create the Genres Table
DROP TABLE IF NOT EXISTS Genres;
CREATE TABLE Genres (
    genre_id INT(13) NOT NULL AUTO_INCREMENT,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY(genre_id)
)
ENGINE=InnoDB;