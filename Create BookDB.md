# Create BookDB

```sql
CREATE DATABASE IF NOT EXISTS BookDB DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use BookDB;

CREATE TABLE Author
(
  AuthorID     INT(11) NOT NULL PRIMARY KEY,
  Name         VARCHAR(255),
  Age          INT(4),
  Country      VARCHAR(255)
);

CREATE TABLE Book
(
  ISBN          INT(11) NOT NULL PRIMARY KEY,
  Title         VARCHAR(255),
  AuthorID      INT(11),
  Publisher     VARCHAR(255),
  PublishDate   date,
  Price         decimal(10, 5),
  FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

```

