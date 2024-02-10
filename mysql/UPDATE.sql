UPDATE staff SET email = 'margaret@paiza.jp'
WHERE staff_id = 5;

/*値の更新*/
UPDATE book SET price = price + 2
WHERE book_id BETWEEN 1 AND 4;
/*where句の条件を正確に入力しないとすべての数値が更新されてしまう*/