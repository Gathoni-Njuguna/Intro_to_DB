-- Active: 1748693940711@@127.0.0.1@3306@alx_book_store
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="gat@123",
    database = "alx_book_store"
   
)

mycursor = mydb.cursor()

 
mycursor.execute("""
CREATE TABLE IF NOT EXISTS Authors(
    author_id INTEGER PRIMARY KEY,
author_name VARCHAR(215)

""")

print("Table created successfully!")
mycursor.execute("""
CREATE TABLE IF NOT EXISTS Books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(130),
    author_id INTEGER,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id));
""")
mycursor.execute("""
    CREATE TABLE Customers(
        customer_id INTEGER PRIMARY KEY,
        customer_name VARCHAR(215),
        email VARCHAR(215),
        address TEXT
    )
""")
mycursor.execute("""
CREATE TABLE IF NOT EXISTS Orders (
    order_id INTEGER PRIMARY KEY,
   customer_id INTEGER,
   order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)
""")
mycursor.execute("""
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INTEGER PRIMARY KEY,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)""")


mycursor.close()
mydb.close()

print("Database connection closed.")