 SELECT *
 FROM sales
 WHERE book_id = 20;

SELECT *
FROM sales
WHERE amount >= 20;

SELECT *
FROM book
WHERE price < 10;

SELECT *
FROM book
WHERE category_id IS NULL;

SELECT *
FROM book
WHERE category_id IS NOT NULL;

/*16.99 から 19.99の範囲*/
SELECT *
FROM book
WHERE price BETWEEN 16.99 AND 19.99;

SELECT *
FROM book
WHERE price >= 16.99 AND price <= 19.99;

SELECT *
FROM sales
WHERE staff_id = 1 OR staff_id = 4;

SELECT *
FROM book_author
WHERE book_id = 3 OR book_id = 18 OR book_id = 50;

SELECT *
FROM book
WHERE NOT(price BETWEEN 16.99 AND 19.99);

SELECT *
FROM author
WHERE first_name IN('Nellie', 'Carrie', 'Robbie', 'Bobbie');

SELECT *
FROM book
WHERE title LIKE 'In%';

SELECT *
FROM book
WHERE title LIKE '%ing%';

SELECT *
FROM book
WHERE title LIKE '%er';


