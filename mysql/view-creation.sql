-- The below queries create all views used in this database
-- These queries assume the queries in database-creation.sql have all been successfully ran

-- Create the Active_Transactions view
DROP VIEW IF EXISTS `Active_Transactions`;
CREATE VIEW `Active_Transactions` AS 
    ( SELECT *
      FROM `Transaction`
      WHERE `return_status` = 'on-loan' );

-- Create the Overdue_Transactions view
DROP VIEW IF EXISTS `Overdue_Transactions`;
CREATE VIEW `Overdue_Transactions` AS
    ( SELECT *
      FROM `Transaction`
      WHERE `return_status` = 'overdue' );

-- Create the Returned_Transactions view
DROP VIEW IF EXISTS `Returned_Transactions`;
CREATE VIEW `Returned_Transactions` AS
    ( SELECT *
      FROM `Transaction`
      WHERE `return_status` = 'returned' );

-- Create the Public_Info_Users view
DROP VIEW IF EXISTS `Public_Info_Users`;
CREATE VIEW `Public_Info_Users` AS 
    ( SELECT `user_id`, `card_barcode`, `last_name`, `first_name`, `phone_number`, `email`
      FROM `Users` );

-- Create the Fined_Users view
DROP VIEW IF EXISTS `Fined_Users`;
CREATE VIEW `Fined_Users` AS 
    ( SELECT `user_id`, `card_barcode`, `last_name`, `first_name`, `phone_number`, `email`, `fines_owed`
      FROM `Users` NATURAL JOIN `Fines`);