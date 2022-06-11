SELECT id, 'Root' as type FROM Tree WHERE p_id IS NUll
UNION
SELECT id, 'Inner' as type FROM Tree WHERE p_id IS NOT NULL AND id IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL)
UNION
SELECT id, 'Leaf' as type FROM Tree Where id NOT IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL)