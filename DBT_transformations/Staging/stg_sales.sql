{{ config(materialized='table') }}


SELECT 

    invoice as invoice_id,
    stockcode as stock_code,
    description as product_description,
    quantity,
    invoicedate,
    price as unit_price,
    customerid as customer_id,
    country,
    TO_TIMESTAMP(LEFT(invoicedate, LENGTH(invoicedate) - 5), 'MM/DD/YY') AS invoicedate_date,
FROM {{ source('sales_retail_source', 'sales_retail') }}
