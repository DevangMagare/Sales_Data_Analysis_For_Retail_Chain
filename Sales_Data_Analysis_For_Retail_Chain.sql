Create database RetailSalesData;
USE RetailSalesData;

Create table Sales_Data_Transcation(
Customer_id varchar(255),
trans_data varchar(255),
trans_amount INT);

Create table Sales_Data_Respone(
Customer_id varchar(255) primary key,
respone INT);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
into table Sales_Data_Transcation
fields terminated by','
lines terminated by '\n'
IGNORE 1 ROWS;

select * from Sales_Data_Transcation;

Explain select * from sales_Data_Transcation where Customer_id = 'CS5295';

Create INDEX idx_id ON Sales_Data_Transcation (Customer_ID );

 
 
 