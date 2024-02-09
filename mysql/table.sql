/*内部結合*/
SELECT *
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;
LIMIT 20;

SELECT *
FROM film
INNER JOIN category ON film.category_id = category.category_id
ORDER BY film_id;

SELECT *
FROM book
INNER JOIN publisher ON book.publisher_id = publisher.publisher_id;

/*内部結合でNULLがあった場合は取得できない。外部結合では取得できる基本的には左外部結合を使う*/

SELECT *
FROM book
LEFT OUTER JOIN category ON book.category_id = category.category_id;

/*3つ以上のテーブル結合*/
SELECT *
FROM sales
INNER JOIN book ON sales.book_id = book.book_id
LEFT OUTER JOIN category ON book.category_id = category.category_id;
