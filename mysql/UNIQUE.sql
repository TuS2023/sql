USE mysns
/*NULLでも一意性は保たれる*/
CREATE TABLE user(
    id INTEGER,
    uid VARCHAR(128) UNIQUE
);
/*NOT NULL*/
/*DROP TABLE テーブル名;で削除*/
USE mysns

CREATE TABLE user(
    id INTEGER,
    uid VARCHAR(128) NOT NULL
);
/*主キー制約*/
USE mysns

CREATE TABLE user(
    id INTEGER PRIMARY KEY,
    uid VARCHAR(128) NOT NULL
);
/*外部キー制約*/
USE mysns

CREATE TABLE post(
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    content TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
);