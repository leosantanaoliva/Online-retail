{{ config(materialized='table') }}

    SELECT 
        invoice_id,
        customer_id,
        stock_code,
        invoicedate_date,
        quantity,
        unit_price,
        (quantity * unit_price) AS TotalAmount,  
        Country
    FROM {{ ref('stg_sales') }}