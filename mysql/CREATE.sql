/*CREATE DATABASE*/
CREATE DATABASE diary;
/*データベース一覧*/
SHOW databases;

/*CREATE TABLE*/
CREATE TABLE post(
    id INTEGER PRIMARY KEY,
    created_on DATE UNIQUE NOT NULL,
    content VARCHAR(140) NOT NULL,
    favorite_count INTEGER NOT NULL,
    rating DECIMAL(2, 1) NOT NULL
);
