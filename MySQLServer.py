import mysql.connector
try:
    mydb = mysql.connector.connect(
        host = "Localhost",
        user = "root",
        Password = "09033641853#Sjayp",
        Database = "mydb"
    )

    mycursor = mydb.cursor()
    mycursor.execute("""CREATE DATABASE IF NOT EXISTS alx_book_store""")
    print("Database 'alx_book_store' created successfully!")
    
except mysql.connector.Error:
    print("Please connect to a server")

mycursor.close()
mydb.close()
print("Database closed")