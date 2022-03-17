-----------------------------------------------------------------------------------------
-- 1- create a relational model using SQL language 
-----------------------------------------------------------------------------------------

-- Create "CUSTOMER" table

CREATE TABLE CUSTOMER (
  Customer_id VARCHAR2(20) CONSTRAINT pk_Customer PRIMARY KEY,
  Customer_Name VARCHAR2(20) CONSTRAINT name_notnull NOT NULL,
  Customer_Tel NUMBER
);

-- Create "PRODUCT" table

CREATE TABLE PRODUCT (
  Product_id VARCHAR2(20) CONSTRAINT pk_Product PRIMARY KEY,
  Product_name VARCHAR2(20) CONSTRAINT name_notnull NOT NULL,
  Price NUMBER CONSTRAINT positif_number CHECK (Price>0)
);

-- Create "ORDERS" table

CREATE TABLE ORDERS (
    	Customer_id VARCHAR2(20),
    	Product_id VARCHAR2(20),
    	Quantity NUMBER,
    	Total_amount NUMBER,
    	CONSTRAINT fk_customer  FOREIGN KEY (Customer_id) REFERENCES CUSTOMER (Customer_id),
    	CONSTRAINT fk_product  FOREIGN KEY (Product_id) REFERENCES PRODUCT (Product_id)
);

-----------------------------------------------------------------------------------------
-- 2- After creating tables, write SQL commands to: 
-----------------------------------------------------------------------------------------

-- Add a column Category (VARCHAR2(20)) to the PRODUCT table.

ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

-- Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.

ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT 'SYSDATE';

