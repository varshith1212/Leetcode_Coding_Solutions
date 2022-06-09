DELETE p2.*
FROM Person p1 INNER JOIN Person P2 ON p1.email = p2.email AND p1.id < p2.id
​
EXPLANATION:
For simply using INNER JOIN as below
​
FROM Person p1 INNER JOIN Person P2 ON p1.email = p2.email
We'll get the following table -
​
p1.id | p1.email | p2.id | p2.email
​
1 | john@example.com | 1 | john@example.com
​
3 | john@example.com | 1 | john@example.com
​
2 | bob@example.com | 2 | bob@example.com
​
1 | john@example.com | 3 | john@example.com
​
3 | john@example.com | 3 | john@example.com
​
For adding another condition by AND to the INNER JOIN from as below
​
FROM Person p1 INNER JOIN Person P2 ON p1.email = p2.email AND p1.id < p2.id
We'll get the following table -
​
p1.id | p1.email | p2.id | p2.email
​
1 | john@example.com | 3 | john@example.com
​
So for DELETE part as below
​
DELETE p2.*