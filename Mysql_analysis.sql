CREATE DATABASE Property_sales;
USE property_sales;

# Importing 
DROP TABLE IF EXISTS real_estate;
CREATE TABLE real_estate (
	ID INT PRIMARY KEY,
    PARID VARCHAR(20) ,
	FULL_ADDRESS VARCHAR(100) ,
	PROPERTYHOUSENUM VARCHAR(20) ,
	PROPERTYADDRESSSTREET VARCHAR(50),
	PROPERTYADDRESSSUF	VARCHAR(4),
	PROPERTYCITY VARCHAR(20),
	PROPERTYSTATE VARCHAR(20),
	PROPERTYZIP	INT ,
	SCHOOLCODE	INT,
	SCHOOLDESC	VARCHAR(20),
	MUNICODE INT , 
	MUNIDESC	VARCHAR(50),
	RECORDDATE DATE,
	SALEDATE	DATE,
	PRICE	INT,
	DEEDBOOK VARCHAR(10),
	SALECODE VARCHAR(10),
	SALEDESC VARCHAR(50),
	INSTRTYPDESC VARCHAR(50),
	YEAR INT,
	MONTH INT,
	PRICE_CATEGORY VARCHAR(20));

# Loading data
LOAD DATA LOCAL INFILE 'file_path\cleaned_property_data.csv'
INTO TABLE real_estate
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SHOW WARNINGS;

# Making a table to keep only the columns needed 
DROP TABLE IF EXISTS property_sales_clean;
CREATE TABLE property_sales_clean AS 
SELECT 
SALEDATE, PRICE, PROPERTYCITY, PROPERTYSTATE, PROPERTYZIP, MUNIDESC, SCHOOLDESC ,SALEDESC, INSTRTYPDESC, YEAR, MONTH, PRICE_CATEGORY 
FROM real_estate ;

# Answering business questions 
# 1. Property price change over time .
SELECT	YEAR(SALEDATE) AS year ,
	AVG(PRICE) AS avg_price , 
    AVG(PRICE) - LAG(AVG(PRICE)) OVER(ORDER BY YEAR(SALEDATE)) as change_in_price
FROM property_sales_clean 
GROUP BY YEAR(SALEDATE)
ORDER BY YEAR(SALEDATE) ASC;

# 2. Which locations have highest avg property prices ? 
SELECT PROPERTYCITY ,
	AVG(PRICE) AS avg_price
FROM property_sales_clean 
GROUP BY PROPERTYCITY 
ORDER BY AVG(PRICE) DESC 
LIMIT 10;

# 3. How different sale types affect prices ? 
SELECT SALEDESC ,
	AVG(PRICE) AS avg_price 
FROM property_sales_clean 
GROUP BY SALEDESC 
ORDER BY avg_price desc ;

# 4. Do properties in certain school districts have higher prices?
SELECT SCHOOLDESC AS school_district ,
	AVG(PRICE) AS price 
FROM property_sales_clean 
GROUP BY SCHOOLDESC 
ORDER BY AVG(PRICE) DESC ;

#5. Which areas have highest number of transactions ? 
SELECT PROPERTYCITY ,
	COUNT(*) as num_transactions 
FROM property_sales_clean 
GROUP BY PROPERTYCITY 
ORDER BY num_transactions desc 
LIMIT 5;




