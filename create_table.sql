CREATE DATABASE dsexercise;

\c dsexercise;

CREATE TABLE IF NOT EXISTS online_retail_cleaned(
  invoice_no VARCHAR(15),
  stock_code VARCHAR(255), 
  description VARCHAR(255),
  quantity INTEGER,
  invoice_date TIMESTAMP,
  unit_price FLOAT4,
  customer_id INTEGER,
  country VARCHAR(255),
  final_price FLOAT4,
  invoice_month VARCHAR(255),
  day_of_week VARCHAR(255)
);

TRUNCATE TABLE online_retail_cleaned
RESTART IDENTITY;

\copy online_retail_cleaned FROM 'datasets/Data-Analysis-Online-Retail-Transactions-master/Cleaned-Dataset/OnlineRetail_Cleaned.csv' delimiter ',' csv header;
