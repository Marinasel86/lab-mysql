
CREATE DATABASE lab_mysql;


USE lab_mysql;

-- Cars table
CREATE TABLE Cars (
    VIN VARCHAR(30) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50) UNIQUE,
    year DATE,
    color VARCHAR(10)
);

-- Customers table
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    phone INTEGER(50) UNIQUE,
    email VARCHAR(50) UNIQUE,
    address VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    state_province VARCHAR(30),
    country VARCHAR(50),
    zip VARCHAR(16)
);

-- Salesperson table
CREATE TABLE Salesperson (
    staff_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE,
    store_id INTEGER UNIQUE
);

-- Invoices table
CREATE TABLE Invoices (
    invoice_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    date DATETIME,
    car_VIN VARCHAR(10),
    customer_id INTEGER,
    staff_id INTEGER,
    FOREIGN KEY (car_VIN) REFERENCES Cars(VIN),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Salesperson(staff_id)
);

-- Sales table
CREATE TABLE Sales (
    invoice_id INTEGER,
    sale_number INTEGER PRIMARY KEY,
    date DATETIME,
    store_id INTEGER,
    staff_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id),
    FOREIGN KEY (store_id) REFERENCES Salesperson(store_id),
    FOREIGN KEY (staff_id) REFERENCES Salesperson(staff_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

