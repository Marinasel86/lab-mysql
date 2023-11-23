
USE lab_mysql;
-- changing number of character in table Cars in the column VIN to 40

ALTER TABLE Cars
MODIFY COLUMN VIN VARCHAR(40);

INSERT INTO Cars (VIN, manufacturer, model, year, color)
VALUES
    ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019-01-01', 'Blue'),
    ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019-01-01', 'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018-01-01', 'White'),
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018-01-01', 'Silver'),
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019-01-01', 'Gray'),
    ('DAM41UDN3CHU2WVF1', 'Volvo', 'V60 Cross Country', '2019-01-01', 'Gray'); 
-- changed VIN number 'DAM41UDN3CHU2WVF1' for last Volvo car because VIN is selected an primary unique 

-- changing column Number of table Customer to a Varchar
ALTER TABLE Customers
MODIFY COLUMN phone VARCHAR(50);

-- changing column email into not unique

ALTER TABLE Customers
DROP INDEX email;

INSERT INTO Customers (customer_id, name, phone, email, address, city, state_province, country, zip)
VALUES
    (10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    (30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
    
INSERT INTO Salesperson (staff_id, name, store_id)
VALUES
    (00001, 'Petey Cruiser', '1334'),
    (00002, 'Anna Sthesia', '345'),
    (00003, 'Paul Molive', '3556'),
    (00004, 'Gail Forcewind', '3455'),
    (00005, 'Paige Turner', '56'),
    (00006, 'Bob Frapples', '5677'),
    (00007, 'Walter Melon', '344'),
    (00008, 'Shonda Leer', '566');
    
-- changing leinght of column VIN in table invoices
ALTER TABLE Invoices
MODIFY COLUMN car_VIN VARCHAR(20);    

SELECT * FROM Invoices;
    
INSERT INTO Invoices (invoice_id, date, car_VIN, customer_id, staff_id)
VALUES
    (0, '2018-08-22', '3K096I98581DHSNUP', 10001, 00003),
    (1, '2018-12-31', 'HKNDGS7CU31E9Z7JW', 30001, 00005),
    (2, '2019-01-22', 'RKXVNNIHLVVZOUB4M', 20001, 00007);