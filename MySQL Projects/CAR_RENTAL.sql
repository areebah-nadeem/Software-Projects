-- Question1 Finals 


--Table 1
CREATE TABLE customer (
    Customer_ID Number(20) PRIMARY KEY,
    Customer_FullName VARCHAR2(70),
    Customer_Phone Number(20)
);



--Table 2

CREATE TABLE transaction (
    Transaction_ID Number(20) PRIMARY KEY,
    Customer_ID Number(20),--table1
    Rental_ID Number(20),-- table5
    Drivers_ID Number(20),-- table4
    Transaction_Amount DECIMAL(10,2),
    Transaction_Details VARCHAR2(255)
);


--TABLE 3
CREATE TABLE reports (
    Report_ID Number(20) PRIMARY KEY,
    Transaction_ID Number(20),
    Report_Details VARCHAR2(255)

);


--table 4

CREATE TABLE driver (
    Drivers_ID Number(20) PRIMARY KEY,
    Drivers_Details VARCHAR2(255)
);

--table5
CREATE TABLE rental (
    Rental_ID  Number(20) PRIMARY KEY,
    Rental_Status VARCHAR2(20)
);




--- inserting values
-- Table 1: customer
INSERT INTO customer (Customer_ID, Customer_FullName, Customer_Phone)
VALUES (1, 'Areebah Nadeem', '1234567890');

INSERT INTO customer (Customer_ID, Customer_FullName, Customer_Phone)
VALUES (2, 'Zara Ansari', '0987654321');

INSERT INTO customer (Customer_ID, Customer_FullName, Customer_Phone)
VALUES (3, 'Mahnoor Ansari', '222222222');


-- Table 2: transaction
INSERT INTO transaction (Transaction_ID, Customer_ID, Rental_ID, Drivers_ID, Transaction_Amount, Transaction_Details)
VALUES (1, 1, 1, 1, 150.00, '1 day rental');

INSERT INTO transaction (Transaction_ID, Customer_ID, Rental_ID, Drivers_ID, Transaction_Amount, Transaction_Details)
VALUES (2, 2, 2, 2, 100.00, '2 day rental');

INSERT INTO transaction (Transaction_ID, Customer_ID, Rental_ID, Drivers_ID, Transaction_Amount, Transaction_Details)
VALUES (3, 3, 3, 3, 175.00, '3 day rental');


-- Table 3: reports
INSERT INTO reports (Report_ID, Transaction_ID, Report_Details)
VALUES (1, 1, 'Daily rental report for 1/1/2023');

INSERT INTO reports (Report_ID, Transaction_ID, Report_Details)
VALUES (2, 2, 'Weekly rental report for 1/1/2023-1/3/2023');

INSERT INTO reports (Report_ID, Transaction_ID, Report_Details)
VALUES (3, 3, 'Monthly rental report for January 2023');


-- Table 4: driver
INSERT INTO driver (Drivers_ID, Drivers_Details)
VALUES (1, 'Nida Smith - valid driver license');

INSERT INTO driver (Drivers_ID, Drivers_Details)
VALUES (2, 'Beenish Doe - valid driver license');

INSERT INTO driver (Drivers_ID, Drivers_Details)
VALUES (3, 'Adnan Johnson - expired driver license');


-- Table 5: rental
INSERT INTO rental (Rental_ID, Rental_Status)
VALUES (1, 'available');

INSERT INTO rental (Rental_ID, Rental_Status)
VALUES (2, 'rented out');

INSERT INTO rental (Rental_ID, Rental_Status)
VALUES (3, 'reserved');



-- adding foreign keys

--table 1 :customer     Customer_ID
--table 2: transaction  Transaction_ID
--table 3  reports       Report_ID
--table 4  driver       Drivers_ID
--table 5   rental      Rental_ID




--transaction foreign key

--table 1 fk Customer_ID from 
ALTER TABLE transaction ADD FOREIGN KEY (Customer_ID) REFERENCES customer(Customer_ID);

ALTER TABLE transaction ADD FOREIGN KEY (Rental_ID) REFERENCES rental(Rental_ID);

ALTER TABLE transaction ADD FOREIGN KEY (Drivers_ID) REFERENCES driver(Drivers_ID);


--reports table 3  fk

ALTER TABLE reports ADD FOREIGN KEY (Transaction_ID) REFERENCES transaction(Transaction_ID);






--Q2


Select * From driver ;

Select * From customer;

Select * From rental;


--question3/4

SELECT table_name, constraint_name, constraint_type
FROM user_constraints
WHERE table_name IN ('CUSTOMER', 'TRANSACTION', 'REPORTS', 'DRIVER', 'RENTAL');


--question 5

SELECT 
customer.Customer_ID,
customer.Customer_FullName,
customer.Customer_Phone,

transaction.Transaction_ID,
transaction.Transaction_Details,


reports.Report_ID,
reports.Report_Details
FROM customer
JOIN transaction ON customer.Customer_ID = transaction.Customer_ID
JOIN reports ON transaction.Transaction_ID = reports.Transaction_ID;



