-- All queries used to create the database and the associated tables
-- All views are created in the view-creation.sql file

-- Create the database for the library system
CREATE DATABASE IF NOT EXISTS `Library`;

-- Use the Library database
USE `Library`;

-- Create the Users table
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
      `user_id` INT NOT NULL AUTO_INCREMENT
    , `card_barcode` INT -- May be null if the user does not yet have a card
    , `last_name` VARCHAR(50) NOT NULL
    , `first_name` VARCHAR(50) NOT NULL
    , `phone_number` CHAR(10) NOT NULL
    , `email` VARCHAR(65) NOT NULL
    , `street_address` VARCHAR(100) NOT NULL
    , `city` VARCHAR(35) NOT NULL
    , `province` CHAR(2) NOT NULL
    , `country` CHAR(3) NOT NULL
    , `postal_code` VARCHAR(6) NOT NULL
    , `date_of_birth` DATE NOT NULL
    , `fines_owed` FLOAT NOT NULL DEFAULT(0.00)
    , PRIMARY KEY (`user_id`)
    , CONSTRAINT `unique_barcode` UNIQUE (`card_barcode`)
)
ENGINE=`InnoDB`;

-- Create the Book table
DROP TABLE IF EXISTS `Book`;
CREATE TABLE `Book` (
      `book_id` INT NOT NULL AUTO_INCREMENT
    , `isbn` VARCHAR(13) NOT NULL
    , `title` VARCHAR(200) NOT NULL
    , `publisher` VARCHAR(150) NOT NULL
    , `volume` INT
    , `release_year` YEAR NOT NULL
    , `total_copies` INT NOT NULL DEFAULT(0)
    , PRIMARY KEY (`book_id`)
    , CONSTRAINT `unique_isbn` UNIQUE (`isbn`)
)
ENGINE=`InnoDB`;

-- Create the Authors table
DROP TABLE IF EXISTS `Authors`;
CREATE TABLE `Authors` (
      `authors_id` INT NOT NULL AUTO_INCREMENT
    , `author_name` VARCHAR(100) NOT NULL
    , PRIMARY KEY (`authors_id`)
)
ENGINE=`InnoDB`;

-- Create the Author_ISBN table
DROP TABLE IF EXISTS `Author_ISBN`;
CREATE TABLE `Author_BookID` (
      `book_id` INT NOT NULL
    , `authors_id` INT NOT NULL
    , PRIMARY KEY (`book_id`)
    , FOREIGN KEY (`book_id`) REFERENCES `Book`(`book_id`) ON UPDATE CASCADE ON DELETE CASCADE
    , FOREIGN KEY (`author_id`) REFERENCES `Authors`(`authors_id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
ENGINE=`InnoDB`;

-- Create the DVD table
DROP TABLE IF EXISTS `DVD`;
CREATE TABLE `DVD` (
      `dvd_id` INT NOT NULL AUTO_INCREMENT
    , `title` VARCHAR(200) NOT NULL
    , `release_year` YEAR NOT NULL
    , `studio` VARCHAR(150) NOT NULL
    , `maturity_rating` ENUM('G', 'PG', 'PG-13', 'R', 'X') NOT NULL
    , `type` ENUM('movie', 'short', 'tvepisodes', 'video', 'other') NOT NULL
    , `total_copies` INT NOT NULL DEFAULT(1)
    , PRIMARY KEY (`dvd_id`)
)
ENGINE = `InnoDB`;

-- Create the CD table
DROP TABLE IF EXISTS `CD`;
CREATE TABLE `CD` (
      `cd_id` INT NOT NULL AUTO_INCREMENT
    , `title` VARCHAR(200) NOT NULL
    , `studio` VARCHAR(100) NOT NULL
    , `release_year` YEAR NOT NULL
    , `explicit` BOOLEAN NOT NULL
    , `maturity_rating` ENUM('G', 'PG', 'PG-13', 'R', 'X') NOT NULL
    , `type` ENUM('music', 'audiobook', 'educational', 'children', 'other') NOT NULL
    , `total_copies` INT NOT NULL DEFAULT(1)
    , PRIMARY KEY (`cd_id`)
)
ENGINE = `InnoDB`;

-- Create the Video_Game table
DROP TABLE IF EXISTS `Video_Game`;
CREATE TABLE `Video_Game` (
      `video_game_id` INT AUTO_INCREMENT
    , `title` VARCHAR(200) NOT NULL
    , `release_year` YEAR NOT NULL
    , `studio` VARCHAR(150) NOT NULL
    , `game_category` ENUM(
          'action'
        , 'action-adventure'
        , 'adventure'
        , 'role-playing'
        , 'simulation'
        , 'strategy'
        , 'sports'
        , 'puzzle'
        , 'idle'
        , 'educational'
        , 'children' 
        ) NOT NULL,
    , `console` ENUM('computer', 'playstation', 'xbox', 'wii') NOT NULL
    , `maturity_rating` ENUM('E', 'E10+', 'T', 'M', 'A', 'RP') NOT NULL
    , `total_copies` INT NOT NULL DEFAULT(1)
    , PRIMARY KEY (`video_game_id`)
)
ENGINE=`InnoDB`;

-- Create the Inventory table
DROP TABLE IF EXISTS `Inventory`;
CREATE TABLE `Inventory` (
      `inventory_id` INT NOT NULL AUTO_INCREMENT
    , `item_id` INT NOT NULL
    , `status` ENUM('in-stock', 'on-loan', 'in-storage', 'lost') NOT NULL
    , PRIMARY KEY (`inventory_id`)
)
ENGINE=`InnoDB`;

-- Create the Transaction table
DROP TABLE IF EXISTS `Transaction`;
CREATE TABLE `Transaction` (
      `transaction_id` INT NOT NULL AUTO_INCREMENT
    , `user_id` INT NOT NULL
    , `inventory_id` INT NOT NULL UNIQUE
    , `due_date` DATE NOT NULL
    , `return_status` ENUM('on-loan', 'returned', 'overdue') NOT NULL
    , PRIMARY KEY (`transaction_id`)
    , FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON UPDATE CASCADE ON DELETE RESTRICT
    , FOREIGN KEY (`inventory_id`) REFERENCES `Inventory`(`inventory_id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
ENGINE=`InnoDB`;

-- Create the Fines table
DROP TABLE IF EXISTS `Fines`;
CREATE TABLE `Fines` (
      `user_id` INT NOT NULL
    , `amount` FLOAT NOT NULL
    , `transaction_id` INT NOT NULL
    , `most_recent_increase_amount` FLOAT NOT NULL
    , `most_recent_increase_date` DATE NOT NULL
    , `first_issued` DATE NOT NULL
    , `next_increase` DATE NOT NULL
    , PRIMARY KEY (`transaction_id`)
    , FOREIGN KEY (`user_id`) REFERENCES `Users`(`user_id`) ON UPDATE CASCADE ON DELETE RESTRICT
    , FOREIGN KEY (`transaction_id`) REFERENCES `Transaction`(`transaction_id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
ENGINE=`InnoDB`;

-- Create the Genres Table
DROP TABLE IF EXISTS `Genres`;
CREATE TABLE `Genres` (
      `genre_id` INT NOT NULL AUTO_INCREMENT
    , `genre` VARCHAR(100) NOT NULL
    , PRIMARY KEY (`genre_id`)
)
ENGINE=`InnoDB`;

-- Create the Book_Genre Table
DROP TABLE IF EXISTS `Book_Genre`;
CREATE TABLE `Book_Genre` (
      `book_id` INT NOT NULL
    , `genre_id` INT NOT NULL
    , PRIMARY KEY (`book_id`, `genre_id`)
    , FOREIGN KEY (`genre_id`) REFERENCES `Genres`(`genre_id`) ON UPDATE CASCADE ON DELETE RESTRICT
    , FOREIGN KEY (`book_id`) REFERENCES `Book`(`book_id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
ENGINE=`InnoDB`;

-- Create the DVD_Genre Table
DROP TABLE IF EXISTS `DVD_Genre`;
CREATE TABLE `DVD_Genre` (
    , `dvd_id` INT NOT NULL
    , `genre_id` INT NOT NULL
    , PRIMARY KEY (`dvd_id`, `genre_id`)
    , FOREIGN KEY (`genre_id`) REFERENCES `Genres`(`genre_id`) ON UPDATE CASCADE ON DELETE RESTRICT
    , FOREIGN KEY (`dvd_id`) REFERENCES `DVD`(`dvd_id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
ENGINE=`InnoDB`;

-- Create the CD_Genre Table
DROP TABLE IF EXISTS `CD_Genre`;
CREATE TABLE `CD_Genre` (
      `cd_id` INT NOT NULL
    , `genre_id` INT NOT NULL
    , PRIMARY KEY (`cd_id`, `genre_id`)
    , FOREIGN KEY (`genre_id`) REFERENCES `Genres`(`genre_id`) ON UPDATE CASCADE ON DELETE RESTRICT
    , FOREIGN KEY (`cd_id`) REFERENCES `CD`(`cd_id`) ON UPDATE CASCADE ON DELETE RESTRICT
)
ENGINE=`InnoDB`;