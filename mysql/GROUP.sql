/*SUM*/
SELECT category_id, SUM(price)
FROM book
GROUP BY category_id;

/*AVG*/
SELECT category_id, AVG(price)
FROM book
GROUP BY category_id;

/*MAX MIN*/
SELECT MIN(sales_date), MAX(sales_date)
FROM sales;

/*ASで命名*/
SELECT category_id, SUM(price) AS 合計金額
FROM book
GROUP BY category_id;

/*HAVING*/
SELECT book_id, SUM(amount)
FROM sales
GROUP BY book_id
HAVING SUM(amount) >= 600;
