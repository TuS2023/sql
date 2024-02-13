DELETE FROM staff
WHERE staff_id = 4;

/*指定しないでいるとレコードを1個ずつ全削除*/
DELETE FROM sales;

/*レコード自体を削除するので早い*/
TRUNCATE TABLE sales;