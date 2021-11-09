# Library Database System

### The schemas of the various tables

 - Everything labelled with a [derived] tag will be the subject of an associated trigger.

## Tables

`Users(user_id, card_barcode, last_name, first_name, phone_number, email, address, postal_code, date_of_birth, fines_owed[derived])`
 - Key: user_id

`Book(isbn, title, author(s), publisher, volume, release_date, total_copies[derived])`
 - Key: isbn

`DVD(dvd_id, title, release_year, studio, maturity_rating, type, total_copies[derived])`
 - Key: dvd_id

`CD(cd_id, title, artist, studio, release_year, explicit, maturity_rating, type)`
 - Key: cd_id

`Video_Game(video_game_id, title, release_year, studio, game_category, console, maturity_rating, total_copies[derived])`
 - Key: video_game_id

`Inventory(inventory_id, isbn, status[derived])`
 - Key: inventory_id

`Transaction(transaction_id, user_id, inventory_id, due_date, return_status)`
 - Key: transaction_id

`Fines(user_id, amount, inventory_id, date_issued, next_increase[date - derived])`
 - Key: user_id

`Title_Genre(title_id, genre_id)`
 - Key: title_id + genre_id

`Genre(genre_id, genre)`
 - Key: genre_id OR genre

## Views

`Active_Transactions(transaction_id, user_id, inventory_id, due_date, return_status)`
 - List of transactions whose status is still active

`Overdue_Transactions(transaction_id, user_id, inventory_id, due_date, return_status)`
List of transactions whose status is overdue

`Returned_Transactions(transaction_id, user_id, inventory_id, due_date, return_status)`
 - List of transactions whose status is returned
 - This record will only grow, and may be expunged when necessary

`Public_Info_Users(user_id, card_barcode, last_name, first_name, phone_number, email)`
 - Meant for use by library staff who do not need access to all of the user's personally identifiable information (PII) 
 - Could be used to create mailing lists or library alerts

`Fined_Users(user_id, card_barcode, last_name, first_name, phone_number, email, fines_owed[derived])`
 - List of users who currently owe fines
 - Could be used to send reminders to all users with outstanding fines

