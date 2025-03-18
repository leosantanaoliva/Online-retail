{{ config(materialized='table') }}

-- models/stg_sales.sql
SELECT
    sales_person,
    country,
    product,
    date,
    amount,
    boxes_shipped
FROM {{ source('chocolate_sales', 'chocolate_sales') }}
