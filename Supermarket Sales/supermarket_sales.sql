--Datasets source: https://www.kaggle.com/datasets/thedevastator/supermarket-ordering-invoicing-and-sales-analysi

CREATE DATABASE IF NOT EXISTS supermarket_sales;

USE supermarket_sales;

CREATE TABLE IF NOT EXISTS sales_team (
    sales_rep VARCHAR(100) NOT NULL,
    sales_repID CHAR(16) NOT NULL,
    company_name VARCHAR(250) NOT NULL,
    company_ID CHAR(16) NOT NULL,
    PRIMARY KEY (company_ID)
);

SELECT  *
FROM    sales_team

CREATE TABLE IF NOT EXISTS invoices (
    order_ID CHAR(16) NOT NULL,
    order_date DATE NOT NULL,
    meal_ID CHAR(16) NOT NULL,
    company_ID CHAR(16) NOT NULL,
    date_of_meal VARCHAR(25) NOT NULL,
    participants VARCHAR(250) NOT NULL,
    meal_price INT NOT NULL,
    type_of_meal VARCHAR(50),
    PRIMARY KEY (order_ID),
    CONSTRAINT fk_company_id1 FOREIGN KEY (company_ID) REFERENCES sales_team(company_ID) ON UPDATE CASCADE ON DELETE CASCADE
);

SELECT  *
FROM    invoices

CREATE TABLE IF NOT EXISTS order_leads (
    order_ID CHAR(16) NOT NULL,
    company_ID CHAR(16) NOT NULL,
    company_name VARCHAR(250) NOT NULL,
    order_date DATE NOT NULL,
    order_value INT NOT NULL,
    converted_to_sales BOOLEAN NOT NULL,
    PRIMARY KEY (order_ID),
    CONSTRAINT fk_company_id2 FOREIGN KEY (company_ID) REFERENCES sales_team(company_ID) ON UPDATE CASCADE ON DELETE CASCADE
);

SELECT  *
FROM    order_leads

LOAD DATA INFILE "C:\\Users\\josep\\OneDrive\\Desktop\\Datasets\\Supermarket Sales\\SalesTeam.csv"
INTO TABLE sales_team
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT  *
FROM    sales_team

LOAD DATA INFILE "C:\\Users\\josep\\OneDrive\\Desktop\\Datasets\\Supermarket Sales\\Invoices.csv"
INTO TABLE invoices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_ID, @order_date, meal_ID, company_ID, date_of_meal, participants, meal_price, type_of_meal)
SET order_date = STR_TO_DATE(@order_date, '%d-%m-%Y');
UPDATE invoices SET date_of_meal = STR_TO_DATE(LEFT(date_of_meal,19), '%Y-%m-%d %H:%i:%s');

SELECT  *
FROM    invoices

LOAD DATA INFILE "C:\\Users\\josep\\OneDrive\\Desktop\\Datasets\\Supermarket Sales\\OrderLeads.csv"
INTO TABLE order_leads
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_ID, company_ID, company_name, @order_date, order_value, converted_to_sales)
SET order_date = STR_TO_DATE(@order_date, '%d-%m-%Y');

SELECT  *
FROM    order_leads
