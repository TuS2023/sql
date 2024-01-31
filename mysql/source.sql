mysql -u root
/* mysqlでshemaとdataを読み込む */
source /home/ubuntu/bookstore-schema.sql
source /home/ubuntu/bookstore-data.sql

/* mysqlだけUSEコマンドがある*/
 USE bookstore;

/*SELECTでstaffを取得*/
 SELECT * FROM staff;
/*SELECTで必要なカラムだけ取得*/
 SELECT book_id, title, year FROM book;
 
 
SELECT * FROM book ORDER BY year;
SELECT * FROM book ORDER BY year DESC;
SELECT * FROM book ORDER BY year DESC;
SELECT * FROM book ORDER BY year, price;