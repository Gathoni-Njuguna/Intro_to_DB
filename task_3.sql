import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="gat@123",
    database = "alx_book_store"
   
)

mysql -u root -p alx_book_store -e "source task_3.sql"