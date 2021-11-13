-- Generate sample data for the Users table
INSERT INTO `Users` (
      `card_barcode`
    , `last_name`
    , `first_name` 
    , `phone_number` 
    , `email`
    , `street_address` 
    , `city`
    , `province`
    , `country`
    , `postal_code` 
    , `date_of_birth`           
  ) 
    VALUES (
          '1'
        , 'Bautista'
        , 'Jose'
        , '5551919191'
        , 'jose.bautista@bluejays.ca'
        , '1000 Ballpark Way'
        , 'Arlington'
        , 'TX'
        , 'USA'
        , '76011'
        , '1980-10-19'
      );
INSERT INTO `Users` (
      `card_barcode`
    , `last_name`
    , `first_name` 
    , `phone_number` 
    , `email`
    , `street_address` 
    , `city`
    , `province`
    , `country`
    , `postal_code` 
    , `date_of_birth`           
  ) 
    VALUES (
          '2'
        , 'Donaldson'
        , 'Josh'
        , '5552020202'
        , 'josh.donaldson@bluejays.ca'
        , '1 Blue Jays Way'
        , 'Toronto'
        , 'ON'
        , 'CAN'
        , 'M5V1J1'
        , '1985-12-08'
      );
INSERT INTO `Users` (
      `card_barcode`
    , `last_name`
    , `first_name` 
    , `phone_number` 
    , `email`
    , `street_address` 
    , `city`
    , `province`
    , `country`
    , `postal_code` 
    , `date_of_birth`           
  ) 
    VALUES (
          '3'
        , 'Halladay'
        , 'Roy'
        , '5553434343'
        , 'roy.halladay@bluejays.ca'
        , '1 Citizens Bank Way'
        , 'Philadelphia'
        , 'PA'
        , 'USA'
        , '19148'
        , '1977-05-14'
      );
INSERT INTO `Users` (
      `card_barcode`
    , `last_name`
    , `first_name` 
    , `phone_number` 
    , `email`
    , `street_address` 
    , `city`
    , `province`
    , `country`
    , `postal_code` 
    , `date_of_birth`           
  ) 
    VALUES (
          '4'
        , 'Guerrero Jr'
        , 'Vladimir'
        , '5552727272'
        , 'vladimir.guerrerojr@bluejays.ca'
        , '1 James D Griffin Plaza'
        , 'Buffalo'
        , 'NY'
        , 'USA'
        , '14203'
        , '1999-03-16'
      );
INSERT INTO `Users` (
      `card_barcode`
    , `last_name`
    , `first_name` 
    , `phone_number` 
    , `email`
    , `street_address` 
    , `city`
    , `province`
    , `country`
    , `postal_code` 
    , `date_of_birth`           
  ) 
    VALUES (
          '5'
        , 'Bichette'
        , 'Bo'
        , '5552727272'
        , 'bo.bichette@bluejays.ca'
        , '373 Douglas Ave'
        , 'Dunedin'
        , 'FL'
        , 'USA'
        , '34698'
        , '1998-03-05'
      );
--
-- Generate sample data for the Book table
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780747532743'
        , 'Harry Potter And The Philosopher\'s Stone'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '1999'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780439064873'
        , 'Harry Potter And The Chamber of Secrets'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '1998'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780545582933'
        , 'Harry Potter And The Prisoner of Azkaban'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '1999'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780439139595'
        , 'Harry Potter And The Goblet of Fire'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '2000'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780439567619'
        , 'Harry Potter And The Order of the Phoenix'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '2003'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780439791328'
        , 'Harry Potter And The Half-Blood Prince'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '2005'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9788867156016'
        , 'Harry Potter And The Deathly Hallows'
        , 'Bloomsbury Pub Ltd'
        , 1
        , '2007'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780044403371'
        , 'The Hobbit: or There and Back Again'
        , 'George Allen & Unwin'
        , 1
        , '1937'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780007136599'
        , 'The Fellowship of the Ring: being the first part of the Lord of the Rings'
        , 'George Allen & Unwin'
        , 1
        , '1954'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780007203598'
        , 'The Two Towers: being the second part of The Lord of the Rings'
        , 'George Allen & Unwin'
        , 1
        , '1954'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '9780007123803'
        , 'The Return of the King: being the third part of The Lord of the Rings'
        , 'George Allen & Unwin'
        , 1
        , '1955'
      );
INSERT INTO `Book` (
      `isbn`
    , `title`
    , `publisher`
    , `volume`
    , `release_year`
  )
    VALUES (
          '1780136067016'
        , 'Database Systems: The Complete Book'
        , 'Pearson Education, Inc.'
        , 1
        , '2009'
      );
--
-- Generate author_bookid tuples for the added books
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          1
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          2
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          3
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          4
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          5
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          6
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          7
        , 1
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          8
        , 2
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          9
        , 2
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          10
        , 2
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          11
        , 2
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          12
        , 3
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          12
        , 4
      );
INSERT INTO `Author_BookID` (
      `book_id`
    , `authors_id`
  )
    VALUES (
          12
        , 5
      );
--
-- Generate the author tuple in the Authors table for the books generated
INSERT INTO `Authors` (
      `author_name`
  )
    VALUES (
          'JK Rowling'
      );
INSERT INTO `Authors` (
      `author_name`
  )
    VALUES (
          'J.R.R. Tolkien'
      );
INSERT INTO `Authors` (
      `author_name`
  )
    VALUES (
          'Hector Garcia-Molina'
      );
INSERT INTO `Authors` (
      `author_name`
  )
    VALUES (
          'Jeffrey D. Ullman'
      );
INSERT INTO `Authors` (
      `author_name`
  )
    VALUES (
          'Jennifer Widom'
      );
--
-- Add the books to the Inventory table
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          1
        , 'in-stock'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          2
        , 'in-stock'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          3
        , 'on-loan'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          4
        , 'on-loan'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          5
        , 'in-storage'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          6
        , 'in-storage'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          7
        , 'in-stock'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          8
        , 'in-stock'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          9
        , 'on-loan'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          10
        , 'on-loan'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          11
        , 'lost'
      );
INSERT INTO `Inventory` (
      `item_id`
    , `status`
  )
    VALUES (
          12
        , 'lost'
      );
--
-- Add some transactions to the Transaction table
INSERT INTO `Transaction` (
      `user_id`
    , `inventory_id`
    , `due_date`
    , `return_status`
  )
    VALUES (
          2
        , 1
        , '2021-09-31'
        , 'overdue'
      );
INSERT INTO `Transaction` (
      `user_id`
    , `inventory_id`
    , `due_date`
    , `return_status`
  )
    VALUES (
          2
        , 2
        , '2021-09-31'
        , 'returned'
      );
INSERT INTO `Transaction` (
      `user_id`
    , `inventory_id`
    , `due_date`
    , `return_status`
  )
    VALUES (
          2
        , 3
        , '2021-12-31'
        , 'on-loan'
      );
INSERT INTO `Transaction` (
      `user_id`
    , `inventory_id`
    , `due_date`
    , `return_status`
  )
    VALUES (
          5
        , 4
        , '2021-12-31'
        , 'on-loan'
      );
INSERT INTO `Transaction` (
      `user_id`
    , `inventory_id`
    , `due_date`
    , `return_status`
  )
    VALUES (
          4
        , 5
        , '2021-12-31'
        , 'returned'
      );
INSERT INTO `Transaction` (
      `user_id`
    , `inventory_id`
    , `due_date`
    , `return_status`
  )
    VALUES (
          5
        , 6
        , '2021-10-31'
        , 'overdue'
      );
--
-- Add some fines for some users to the Fines table
INSERT INTO `Fines` (
      `user_id`
    , `amount`
    , `inventory_id`
    , `most_recent_increase_amount`
    , `most_recent_increase_date`
    , `first_issued`
    , `next_increase`
  )
    VALUES (
          2
        , 2.99
        , 1
        , 1.99
        , '2021-11-11'
        , '2021-11-04'
        , '2021-11-18'
      );
INSERT INTO `Fines` (
      `user_id`
    , `amount`
    , `inventory_id`
    , `most_recent_increase_amount`
    , `most_recent_increase_date`
    , `first_issued`
    , `next_increase`
  )
    VALUES (
          5
        , 0.99
        , 1
        , 0.99
        , '2021-10-31'
        , '2021-10-31'
        , '2021-11-07'
      );