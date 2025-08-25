USE fraud_detect;

CREATE TABLE bank_transactions (
    Customer_ID VARCHAR(100),
    Customer_Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    State VARCHAR(50),
    City VARCHAR(50),
    Bank_Branch VARCHAR(100),
    Account_Type VARCHAR(20),
    Transaction_ID VARCHAR(100) PRIMARY KEY,
    Transaction_Date DATE,
    Transaction_Time TIME,
    Transaction_Amount DECIMAL(15,2),
    Merchant_ID VARCHAR(100),
    Transaction_Type VARCHAR(50),
    Merchant_Category VARCHAR(50),
    Account_Balance DECIMAL(15,2),
    Transaction_Device VARCHAR(100),
    Transaction_Location VARCHAR(100),
    Device_Type VARCHAR(50),
    Is_Fraud TINYINT,
    Transaction_Currency VARCHAR(10),
    Customer_Contact VARCHAR(50),
    Transaction_Description VARCHAR(255),
    Customer_Email VARCHAR(100)
);

SET GLOBAL LOCAL_INFILE = 1;

LOAD DATA LOCAL INFILE 'C:/Users/abhip/Downloads/Data Analytics Projects/Major Projects/Banking Transaction Behavior & Predictive Fraud Risk/Bank_Transaction_Fraud_Detection.csv'
INTO TABLE bank_transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM bank_transactions;

-- Total No. of Rows --
Select COUNT(*) FROM bank_transactions;

-- Null Values Check --
SELECT 
SUM(CASE WHEN Customer_ID = NULL THEN 1 ELSE 0 END) AS null_Customer_id,
SUM(CASE WHEN Customer_Name = NULL THEN 1 ELSE 0 END) AS null_Customer_Name,
SUM(CASE WHEN Bank_Branch = NULL THEN 1 ELSE 0 END) AS null_Bank_Branch,
SUM(CASE WHEN Account_Type = NULL THEN 1 ELSE 0 END) AS null_Account_Type,
SUM(CASE WHEN Transaction_ID = NULL THEN 1 ELSE 0 END) AS null_Transaction_ID,
SUM(CASE WHEN Transaction_Amount = NULL THEN 1 ELSE 0 END) AS null_Transaction_Amount,
SUM(CASE WHEN Merchant_ID = NULL THEN 1 ELSE 0 END) AS null_Merchant_ID,
SUM(CASE WHEN Transaction_Type = NULL THEN 1 ELSE 0 END) AS null_Transaction_Type,
SUM(CASE WHEN Account_Balance = NULL THEN 1 ELSE 0 END) AS null_Account_Balance,
SUM(CASE WHEN Transaction_Device = NULL THEN 1 ELSE 0 END) AS null_Transaction_Device,
SUM(CASE WHEN Is_Fraud = NULL THEN 1 ELSE 0 END) AS null_Is_Fraud
FROM bank_transactions;

-- DUPLICATE ROW CHECK --
SELECT Transaction_ID, COUNT(*)
FROM bank_transactions
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

-- MAX Transaction Amount --
SELECT MAX(Transaction_Amount) 
FROM bank_transactions;

-- MIN Transaction Amount --
SELECT MIN(Transaction_Amount)         
FROM bank_transactions;

-- Total No. of Frauds -- 
SELECT COUNT(Is_Fraud) 
FROM bank_transactions
WHERE Is_Fraud = 1;

-- Top 10 Hightest Transaction Amount -- 
SELECT Transaction_ID, Transaction_Time, Transaction_Amount 
FROM bank_transactions
ORDER BY Transaction_Amount DESC
LIMIT 10;

-- Top 10 Hights Fraud Transaction Amount --
SELECT Transaction_ID, Transaction_Time, Transaction_Amount, (CASE WHEN Is_Fraud = 1 THEN "Yes" ELSE "No" END) AS Fraud  
FROM bank_transactions
WHERE Is_Fraud = 1 
ORDER BY Transaction_Amount DESC
LIMIT 10;

-- All types of Transaction Devices -- 
SELECT Transaction_Device, COUNT(Transaction_ID) AS Total_Transactions 
FROM bank_transactions
GROUP BY Transaction_Device;

-- Top 5 Cities having more Fraud Transactions --
SELECT COUNT(Transaction_ID), State 
FROM bank_transactions
GROUP BY State
HAVING Is_Fraud == 1; 










