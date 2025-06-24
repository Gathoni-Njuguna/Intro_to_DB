import mysql.connector
from mysql.connector import Error

try:
  
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="gat@123"
    )
    
    if mydb.is_connected():
        mycursor = mydb.cursor()

        # Create a table named `customers` (if it doesn't exist)
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        mycursor.execute("USE alx_book_store")
        
        print("Database 'alx_book_store' created successfully!")
        
except Error as e:
    print(f"Error while connecting to MySQL: {e}")
    
finally:
    if 'mycursor' in locals() and mycursor is not None:
        mycursor.close()
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
        print("Database connection closed.")