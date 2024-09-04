create database retail;
use retail;
create table sales_data_transaction 
(
customer_id varchar(255) ,
tran_date varchar(255),
tran_amount INT);
truncate table sales_data_transaction ;
DROP TABLE sales_data_response;
create table sales_data_response
(
customer_id varchar(255) PRIMARY KEY,
response INT );
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv"
INTO  TABLE sales_data_transaction 
FIELDS terminated  by ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv"
INTO  TABLE sales_data_response 
FIELDS terminated  by ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from sales_data_transaction limit 10;
EXPLAIN  SELECT * FROM sales_data_transaction  WHERE customer_id="CS5295";
CREATE INDEX idx_id ON sales_data_transaction(customer_id);
EXPLAIN  SELECT * FROM sales_data_transaction  WHERE customer_id="CS5295";

