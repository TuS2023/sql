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

-- purchased_atごとのお金を使った数を取得してください

SELECT COUNT(price), purchased_at
FROM purchases
GROUP BY purchased_at
;

-- purchased_atとcharacter_nameごとの合計金額を取得してください

SELECT SUM(price), purchased_at, character_name
FROM purchases
GROUP BY purchased_at, character_name
;

-- purchased_atとcharacter_nameごとにお金を使った回数を取得してください

SELECT COUNT(price), purchased_at, character_name
FROM purchases
GROUP BY purchased_at, character_name
;

-- WHEREに条件を付け足してcharacter_nameがにんじゃわんこであるデータを取得し、
-- グループ化してください

SELECT SUM(price), purchased_at
FROM purchases
WHERE character_name = "にんじゃわんこ"
GROUP BY purchased_at
;

-- WHEREに条件を付け足してcategoryが食費であるデータを
-- purchased_atとcharacter_nameでグループ化してください

SELECT SUM(price), purchased_at, character_name
FROM purchases
WHERE category = "食費"
GROUP BY purchased_at, character_name
;

-- 日付ごとの合計金額のうち、2000円を超えるデータのみを取得してください

SELECT SUM(price), purchased_at
FROM purchases
GROUP BY purchased_at
HAVING SUM(price) > 2000
;

-- 日付とキャラクターごとの合計金額のうち、3000円を超えるデータのみを取得してください

SELECT SUM(price), purchased_at, character_name
FROM purchases
GROUP BY purchased_at, character_name 
HAVING SUM(price) > 3000
;

-- categoryでグループ化し、各カテゴリーごとにpriceカラムの合計とcategoryカラムのデータを取得してください

SELECT SUM(price), category
FROM purchases
GROUP BY category
;

-- キャラクターごとにグループ化し、priceカラムの合計と、character_nameを取得してください
-- ただし、WHEREでcategoryが「雑費」であるレコードから集計してください

SELECT SUM(price), character_name
FROM purchases
WHERE category = "雑費"
GROUP BY character_name
;
