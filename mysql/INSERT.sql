/*ほかのカラムがあるため指定して追加*/
INSERT INTO staff(staff_id, first_name, last_name, email)
VALUES (5, 'Kyoko', 'Kirishima', 'kirishima@paiza.jp');

/*複数レコードの追加*/
INSERT INTO book(book_id, title, year, price, publisher_id)
VALUES (1001, 'ぱいじょ！総集編1', 2017, 12.99, 3),
    (1002, 'ぱいじょ！総集編2', 2018, 12.99, 3),
    (1003, 'ぱいじょ！総集編3', 2019, 14.99, 3);