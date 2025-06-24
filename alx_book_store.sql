CREATE DATABASE IF NOT EXISTS alx_book_store
USE  alx_book_store;
CREATE TABLE IF NOT EXISTS authors(
    author_id INTEGER PRIMARY KEY,
author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INTEGER,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id));

    CREATE TABLE customers(
        customer_id INTEGER PRIMARY KEY,
        customer_name VARCHAR (215),
        email VARCHAR(215),
        address TEXT
    );

CREATE TABLE IF NOT EXISTS orders (
    order_id INTEGER PRIMARY KEY,
   customer_id INTEGER,
   order_date DATE,
   FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INTEGER PRIMARY KEY,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);