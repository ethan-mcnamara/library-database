-- Query to get all the transactions a user has initiated
SELECT * 
FROM (`Public_Info_Users` INNER JOIN `Transaction`
USING (`user_id`)
);