-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Category (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(30) NOT NULL
  );

CREATE TABLE Product (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(30) NOT NULL,
  price Decimal(10,2) NOT NULL,
  stock INTEGER DEFAULT 10 NOT NULL,
  category_id INTEGER ,
  FOREIGN KEY (category_id)
        REFERENCES Category(id)
);

CREATE TABLE Tag (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(30) NOT NULL
  );

  CREATE TABLE ProductTag (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  product_id INTEGER,
  FOREIGN KEY (product_id)
        REFERENCES Product(id),
  tag_id INTEGER,
  FOREIGN KEY (tag_id)
        REFERENCES Tag(id)
);