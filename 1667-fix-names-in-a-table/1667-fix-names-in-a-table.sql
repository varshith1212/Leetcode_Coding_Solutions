# Write your MySQL query statement below

SELECT user_id, CONCAT(UPPER(left(name,1)),LOWER(substring(name,2))) name FROM Users  ORDER BY user_id;