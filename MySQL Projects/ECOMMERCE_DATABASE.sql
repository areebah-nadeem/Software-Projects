--PROJECT 2

DROP Table Comm_Product_Details22 cascade constraints ;
DROP Table Comm_Inventory2 cascade constraints;
DROP Table Comm_Manufacturer_Details2 cascade constraints ;
--DROP Table Comm_OrderDetails2 cascade constraints ;
DROP Table Comm_CustomerDetails2 cascade constraints ;
--DROP Table Comm_Shipping_Details2 cascade constraints ;
DROP Table Comm_Payment_Details2 cascade constraints ;
DROP Table Comm_OrderConfirmation2 cascade constraints ;


----checking tables

SELECT * FROM Comm_Product_Details22;
SELECT * FROM Comm_Inventory2;
SELECT * FROM  Comm_Manufacturer_Details2;
SELECT * FROM  Comm_CustomerDetails2;
SELECT * FROM Comm_Payment_Details2;
SELECT * FROM Comm_OrderConfirmation2;



--TABLE 1 Comm_Product Details
CREATE TABLE Comm_Product_Details22 (
    Product_Id NUMBER(30) PRIMARY KEY NOT NULL,
    Product_Name VARCHAR2(50),
    Product_Category VARCHAR2(50),
    Product_Price DECIMAL(10, 2),
    Product_Description varchar2(30),
    Product_Brand VARCHAR2(30)
    
);


--TABLE 2: Comm_Inventory
CREATE TABLE Comm_Inventory2 (
    Product_Brand VARCHAR2(30) PRIMARY KEY,
    Store_number NUMBER(30),
    Stock NUMBER(4),
     Product_Id NUMBER(30),
     Product_Size NUMBER(30),
     Manufacturer_Id NUMBER(30)
);


--TABLE 3: Comm_Manufacturer details
CREATE TABLE Comm_Manufacturer_Details2 (
    Manufacturer_Id  NUMBER(30) PRIMARY KEY NOT NULL,
    Phone NUMBER(20),
    Email VARCHAR2(50),
    Address VARCHAR2(100),
        Product_Brand VARCHAR2(30)
);

--desc Comm_Manufacturer_Details2;

--Table 4: Comm_CustomerDetails

--Drop TABLE Comm_CustomerDetails2;
CREATE TABLE Comm_CustomerDetails2 (
    Customer_Id NUMBER(30) PRIMARY KEY NOT NULL,
    Full_Name VARCHAR2(50),
    Billing_Address VARCHAR2(100),
    Phone NUMBER(20),
   Customer_Email_Id VARCHAR2(50),
    Shipping_Address  VARCHAR2(100)
    
);


--TABLE 5: Comm_Payment
CREATE TABLE Comm_Payment_Details2 (
    Payment_Ref_Id NUMBER(30) PRIMARY KEY,
    Customer_Id NUMBER(30),
    Order_Id NUMBER(30),      
    Product_Price NUMBER(10, 2),
  Payment_Method VARCHAR2(20), 
   Product_Id number (30),
   Manufacturer_Id number (30),
   Product_Quantity number (30)
);


--TABLE 6: Comm_OrderConfirmation

--DROP TABLE Comm_OrderConfirmation2;
CREATE TABLE Comm_OrderConfirmation2 (
    Tracking_Id NUMBER(30),
    Customer_Email_Id VARCHAR2(50),
    Order_Date DATE,
    Order_Status VARCHAR2(2),
    Payment_Ref_Id NUMBER(30),
    Order_Id NUMBER(30) PRIMARY KEY,
    Customer_Id number (30)
);



Desc    Comm_Product_Details22;
Desc    Comm_Inventory2;
Desc    Comm_Manufacturer_Details2;
Desc    Comm_CustomerDetails2;
Desc    Comm_Payment_Details2;
Desc    Comm_OrderConfirmation2;

--T1    Comm_Product_Details22
--T2    Comm_Inventory2
--T3    Comm_Manufacturer_Details2
--T4    Comm_CustomerDetails2
--T5    Comm_Payment_Details2
--T6    Comm_OrderConfirmation2
--foreign keys,
--table 2



--INSERTING VALUES IN TABLES

--TABLE 1: Comm_Product_Details2

INSERT INTO Comm_Product_Details22 (Product_Id, Product_Name, Product_Category, Product_Price, Product_Description, Product_Brand)
VALUES (1, 'Running Shoes', 'Athletic', 89.99, 'New', 'Nike');

INSERT INTO Comm_Product_Details22 (Product_Id, Product_Name, Product_Category, Product_Price, Product_Description, Product_Brand)
VALUES (2, 'Walking Shoes', 'Casual', 49.99, 'Classic', 'Adidas');

INSERT INTO Comm_Product_Details22 (Product_Id, Product_Name, Product_Category, Product_Price, Product_Description, Product_Brand)
VALUES (3, 'Soccer Shoes', 'Sports', 79.99, 'New', 'Puma');

INSERT INTO Comm_Product_Details22 (Product_Id, Product_Name, Product_Category, Product_Price, Product_Description, Product_Brand)
VALUES (4, 'Basketball Shoes', 'Athletic', 99.99, 'High Top', 'Under Armour');

INSERT INTO Comm_Product_Details22 (Product_Id, Product_Name, Product_Category, Product_Price, Product_Description, Product_Brand)
VALUES (5, 'Sandals', 'Casual', 29.99, 'Beach', 'Crocs');

SELECT * FROM Comm_Product_Details22;
--DESC Comm_Inventory2;
--TABLE 2: Comm_Inventory2

INSERT INTO Comm_Inventory2 (Product_Brand, Store_number, Stock, Product_Id, Product_Size, Manufacturer_Id)
VALUES ('Nike', 1, 1, 1, 1, 1);

INSERT INTO Comm_Inventory2 (Product_Brand, Store_number, Stock, Product_Id, Product_Size, Manufacturer_Id)
VALUES ('Adidas', 2, 2, 2, 2, 2);

INSERT INTO Comm_Inventory2 (Product_Brand, Store_number, Stock, Product_Id, Product_Size, Manufacturer_Id)
VALUES ('Puma', 3, 3, 3, 3, 3);

INSERT INTO Comm_Inventory2 (Product_Brand, Store_number, Stock, Product_Id, Product_Size, Manufacturer_Id)
VALUES ('Under Armour', 4, 4, 4, 4, 4);

INSERT INTO Comm_Inventory2 (Product_Brand, Store_number, Stock, Product_Id, Product_Size, Manufacturer_Id)
VALUES ('Crocs', 5, 5, 5, 5, 5);


--SELECT * FROM Comm_Inventory2;
--TABLE 3: Comm_Manufacturer_Details2

INSERT INTO Comm_Manufacturer_Details2 (Manufacturer_Id, Phone, Email, Address, Product_Brand)
VALUES (1, 1234567890, 'nike@nike.com', '123 Main St, Portland, America', 'Nike');

INSERT INTO Comm_Manufacturer_Details2 (Manufacturer_Id, Phone, Email, Address, Product_Brand)
VALUES (2, 9876543210, 'adidas@adidas.com', '456 Main St, Berlin, Germany', 'Adidas');

INSERT INTO Comm_Manufacturer_Details2 (Manufacturer_Id, Phone, Email, Address, Product_Brand)
VALUES (3, 1212121212, 'puma@puma.com', '789 Main St, Herzogenaurach, Germany', 'Puma');

INSERT INTO Comm_Manufacturer_Details2 (Manufacturer_Id, Phone, Email, Address, Product_Brand)
VALUES (4, 1112223333, 'ua@underarmour.com', '111 Main St, Baltimore, America', 'Under Armour');

INSERT INTO Comm_Manufacturer_Details2 (Manufacturer_Id, Phone, Email, Address, Product_Brand)
VALUES (5, 1112223433, 'cs@crocs.com', '121 Main St, Baltimore, America', 'Crocs');

--SELECT * FROM Comm_Manufacturer_Details2;

--Table 4: Comm_CustomerDetails2

INSERT INTO Comm_CustomerDetails2 (Customer_Id, Full_Name, Billing_Address, Phone, Customer_Email_Id, Shipping_Address)
VALUES (1, 'Harsh Doe', '123 Main Street, Anytown USA', '5551234', 'harshdoe@email.com', '123 Main Street, Portland USA');

INSERT INTO Comm_CustomerDetails2 (Customer_Id, Full_Name, Billing_Address, Phone, Customer_Email_Id, Shipping_Address)
VALUES (2, 'Malhar Smith', '456 Oak Street, Anytown USA', '5555678', 'malharsmith@email.com', '456 Oak Street, Portland USA');

INSERT INTO Comm_CustomerDetails2 (Customer_Id, Full_Name, Billing_Address, Phone, Customer_Email_Id, Shipping_Address)
VALUES (3, 'Areebah Johnson', '789 Maple Ave, Anytown USA', '5559012', 'areebahjohnson@email.com', '789 Maple Ave, Portland USA');

INSERT INTO Comm_CustomerDetails2 (Customer_Id, Full_Name, Billing_Address, Phone, Customer_Email_Id, Shipping_Address)
VALUES (4, 'Nadeem Brown', '321 Elm Street, Anytown USA', '5553456', 'nadeembrown@email.com', '321 Elm Street, Portland USA');

INSERT INTO Comm_CustomerDetails2 (Customer_Id, Full_Name, Billing_Address, Phone, Customer_Email_Id, Shipping_Address)
VALUES (5, 'Zara Wilson', '654 Pine Road, Anytown USA', '5557890', 'zarawilson@email.com', '654 Pine Road, Portland USA');

--Table 5: Comm_Payment_Details2

INSERT INTO Comm_Payment_Details2 (Payment_Ref_Id, Customer_Id, Order_Id, Product_Price, Payment_Method, Product_Id, Manufacturer_Id, Product_Quantity)
VALUES (1, 1, 1, 89.99, 'VISA', 1, 1, 2);

INSERT INTO Comm_Payment_Details2 (Payment_Ref_Id, Customer_Id, Order_Id, Product_Price, Payment_Method, Product_Id, Manufacturer_Id, Product_Quantity)
VALUES (2, 2, 2, 49.99, 'DEBIT', 2, 2, 1);

INSERT INTO Comm_Payment_Details2 (Payment_Ref_Id, Customer_Id, Order_Id, Product_Price, Payment_Method, Product_Id, Manufacturer_Id, Product_Quantity)
VALUES (3, 3, 3, 79.99, 'PAYPAL', 3, 3, 3);

INSERT INTO Comm_Payment_Details2 (Payment_Ref_Id, Customer_Id, Order_Id, Product_Price, Payment_Method, Product_Id, Manufacturer_Id, Product_Quantity)
VALUES (4, 4, 4, 99.99, 'VISA', 4, 4, 4);

INSERT INTO Comm_Payment_Details2 (Payment_Ref_Id, Customer_Id, Order_Id, Product_Price, Payment_Method, Product_Id, Manufacturer_Id, Product_Quantity)
VALUES (5, 5, 5, 29.99, 'DEBIT', 5, 5, 1);

--TABLE 6: Comm_OrderConfirmation2

INSERT INTO Comm_OrderConfirmation2 (Tracking_Id, Customer_Email_Id, Order_Date, Order_Status, Payment_Ref_Id, Order_Id, Customer_Id)
VALUES (1, 'harsh@example.com', TO_DATE('2023-03-28', 'YYYY-MM-DD'), 'P', 1, 1, 1);

INSERT INTO Comm_OrderConfirmation2 (Tracking_Id, Customer_Email_Id, Order_Date, Order_Status, Payment_Ref_Id, Order_Id, Customer_Id)
VALUES (2, 'zara@example.com', TO_DATE('2023-03-27', 'YYYY-MM-DD'), 'D', 2, 2, 2);

INSERT INTO Comm_OrderConfirmation2 (Tracking_Id, Customer_Email_Id, Order_Date, Order_Status, Payment_Ref_Id, Order_Id, Customer_Id)
VALUES (3, 'manu@example.com', TO_DATE('2023-03-26', 'YYYY-MM-DD'), 'D', 3, 3, 3);

INSERT INTO Comm_OrderConfirmation2 (Tracking_Id, Customer_Email_Id, Order_Date, Order_Status, Payment_Ref_Id, Order_Id, Customer_Id)
VALUES (4, 'areebah@example.com', TO_DATE('2023-03-25', 'YYYY-MM-DD'), 'P', 4, 4, 4);

INSERT INTO Comm_OrderConfirmation2 (Tracking_Id, Customer_Email_Id, Order_Date, Order_Status, Payment_Ref_Id, Order_Id, Customer_Id)
VALUES (5, 'anam@example.com', TO_DATE('2023-03-24', 'YYYY-MM-DD'), 'P', 5, 5, 5);





ALTER TABLE Comm_Product_Details22 ADD  FOREIGN KEY (Product_Brand) REFERENCES Comm_Inventory2(Product_Brand); 

ALTER TABLE Comm_Inventory2 ADD  FOREIGN KEY (Product_Id) REFERENCES Comm_Product_Details22(Product_Id); 

ALTER TABLE Comm_Inventory2 ADD  FOREIGN KEY (Manufacturer_Id) REFERENCES Comm_Manufacturer_details2(Manufacturer_Id); 

--TABLE 3
ALTER TABLE Comm_Manufacturer_details2 ADD  FOREIGN KEY (Product_Brand) REFERENCES Comm_Inventory2(Product_Brand); 

--table 5

ALTER TABLE Comm_Payment_Details2 ADD  FOREIGN KEY (Product_Id) REFERENCES Comm_Product_Details22(Product_Id); 
ALTER TABLE Comm_Payment_Details2 ADD  FOREIGN KEY (Customer_Id) REFERENCES Comm_CustomerDetails2(Customer_Id); 
ALTER TABLE Comm_Payment_Details2 ADD  FOREIGN KEY (Manufacturer_Id) REFERENCES Comm_Manufacturer_Details2(Manufacturer_Id); 
ALTER TABLE Comm_Payment_Details2 ADD  FOREIGN KEY (Manufacturer_Id) REFERENCES Comm_OrderConfirmation2(Order_Id); 


ALTER TABLE Comm_Payment_Details2 ADD CONSTRAINT Comm_Payment_type_ck
                CHECK (Payment_Method IN ('VISA', 'DEBIT', 'PAYPAL'));


--TABLE 6
ALTER TABLE Comm_OrderConfirmation2 ADD  FOREIGN KEY (Customer_Id) REFERENCES Comm_CustomerDetails2(Customer_Id);




----checking tables

SELECT * FROM Comm_Product_Details22;       --pk Product_Id
SELECT * FROM Comm_Inventory2;              --pk Product_Brand
SELECT * FROM  Comm_Manufacturer_Details2;  --pk  Manufacturer_Id
SELECT * FROM  Comm_CustomerDetails2;       --pk  Customer_Id
SELECT * FROM Comm_Payment_Details2;        --pk  Payment_Ref_Id
SELECT * FROM Comm_OrderConfirmation2;      --pk  Tracking_Id


--- name ,order date , order id, and order status for Areebah BY TRADITIONAL WAY
select 
c.Full_Name, c.Customer_Email_Id, oc.Order_Date, oc.Order_Id, oc.Order_Status

from
Comm_CustomerDetails2 c, Comm_OrderConfirmation2 oc

where
c.Customer_Id = oc.Customer_Id and c.Full_Name = 'Areebah Johnson';



--ALL CUSTOMERS order status pending 
SELECT c.Full_Name, c.Customer_Email_Id, oc.Order_Date, oc.Order_Id, oc.Order_Status
FROM Comm_CustomerDetails2 c
 JOIN Comm_OrderConfirmation2 oc Using (Customer_Id)
WHERE Order_Status = 'P';


--supplier details of a product

--product name ,price and brand and in stock and manufacturer  email phone  where product price is more than 50

SELECT 
P.Product_Name, P.Product_Price, P.Product_Brand, I.Stock, MAN.Phone || ' , ' || MAN.Email as "manufacturer Contact Info"
FROM
Comm_Product_Details22 P
INNER JOIN Comm_Inventory2 I ON P.Product_Id = I.Product_Id
INNER JOIN Comm_Manufacturer_Details2 MAN ON I.Product_Brand = MAN.Product_Brand

Where
Product_Price>50;


--what is the payment method Zara used for her purchase?
select c.Full_Name, Pay.Payment_Method
from Comm_CustomerDetails2 c
Join  Comm_Payment_Details2 Pay Using (Customer_Id)
where Full_Name Like'Zara %';



--how much everyone will pay if the state tax is 15% (give price with and without tax)
select c.Full_Name,Pay.Product_Price As "Price Without Tax",
Pay.Product_Price * 1.15 As "Price 15% Tax"
from Comm_CustomerDetails2 c
Join  Comm_Payment_Details2 Pay Using (Customer_Id);

