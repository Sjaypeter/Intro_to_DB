import mysql.connector

alx_book_store = mysql.connector.connect(
    host = "Localhost",
    user = "root",
    Password = "09033641853#Sjayp",
    Database = "alx_book_store"
)

mycursor = alx_book_store.cursor()
mycursor.execute(
    try:
        CREATE DATABASE IF NOT EXISTS alx_book_store
    except mysql.connector.Error:
        print("Please connect to a server!") 
)
print("Database 'alx_book_store' created successfully!")

mycursor.close()
alx_book_store.close()
print("Database closed")