# Write your MySQL query statement below

UPDATE Salary 
    SET sex = (CASE SEX
                        WHEN 'm' then 'f'
                        ELSE 'm'
               END) 