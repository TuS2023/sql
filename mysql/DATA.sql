/*整数型*/
USE mysns

CREATE TABLE post(
    id INTEGER
);
/*小数型*/
USE mysns

CREATE TABLE post(
    rating DECIMAL(3, 1)
);
/*文字列型*/
USE mysns

CREATE TABLE post(
    content VARCHAR(20)
);
/*日付*/
USE mysns

CREATE TABLE post(
    created DATE
);
/*日時*/
USE mysns

CREATE TABLE post(
    created DATETIME
);
/*デフォルト*/
USE mysns

CREATE TABLE post(
    id INTEGER PRIMARY KEY,
    favorite_count INTEGER DEFAULT 0
);