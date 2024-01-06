SELECT name, price
FROM purchases;

SELECT *
FROM purchases;

SELECT *
FROM purchases
WHERE category = "食費";

SELECT *
FROM purchases
WHERE price = 1000;

SELECT *
FROM purchases
WHERE purchased_at = "2017-07-01";

SELECT *
FROM purchases
WHERE purchased_at <= "2017-08-01";

SELECT *
FROM purchases
WHERE price >= 1000;

SELECT *
FROM purchases
WHERE name LIKE "%プリン%";

SELECT *
FROM purchases
WHERE name LIKE "プリン%";

SELECT *
FROM purchases
WHERE name LIKE "%プリン";

SELECT *
FROM purchases
WHERE not name LIKE "%プリン%";

SELECT *
FROM purchases
WHERE not character_name = "にんじゃわんこ";

SELECT *
FROM purchases
WHERE price IS NULL;

SELECT *
FROM purchases
WHERE price IS NOT NULL;

SELECT *
FROM purchases
WHERE category = "食費"
AND character_name = "ひつじ仙人";

SELECT *
FROM purchases
WHERE category = "食費"
OR character_name = "にんじゃわんこ";

SELECT *
FROM purchases
ORDER BY price DESC;

SELECT *
FROM purchases
WHERE character_name = "にんじゃわんこ"
ORDER BY price ASC;

SELECT *
FROM purchases
WHERE character_name = "にんじゃわんこ"
LIMIT 10;

SELECT *
FROM purchases
LIMIT 5;

SELECT *
FROM purchases
WHERE purchased_at <= "2017-08-01";

SELECT *
FROM purchases
WHERE name LIKE "%プリン%";

SELECT *
FROM purchases
WHERE NOT character_name = "にんじゃわんこ";

SELECT *
FROM purchases
WHERE price IS NULL;

SELECT *
FROM purchases
WHERE category = "食費"
AND character_name = "ひつじ仙人";

SELECT *
FROM purchases
ORDER BY price DESC
LIMIT 5;

SELECT DISTINCT(character_name)
FROM purchases;

SELECT DISTINCT(name)
FROM purchases;

SELECT name, price, price * 1.08
FROM purchases;

SELECT SUM(price)
FROM purchases
WHERE character_name = "にんじゃわんこ"
;