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
 
 /*昇順降順*/
SELECT * FROM book ORDER BY year;
SELECT * FROM book ORDER BY year DESC;
SELECT * FROM book ORDER BY title;
SELECT * FROM book ORDER BY year, price;

/*取得件数*/
SELECT * FROM book ORDER BY price DESC LIMIT 30;
