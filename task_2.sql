USE DATABASE alx_book_store;
alx_book_store = mysql.connector.connect(
    host = "Localhost",
    user = "root",
    password = "09033641853#Sjayp"
)

mycursor = alx_book_store.cursor()
mycursor.execute("""
    CREATE TABLE Books(
    book_id (PRIMARY KEY),
    title VARCHAR(130),
    author_id INT ,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)


);
""")

print("Table created")
mycursor.close()
alx_book_store.close()

print("Database closed")