{{ config(materialized='table') }}
-- models/dim_salesperson.sql

SELECT
    DISTINCT sales_person AS sales_person,
    ROW_NUMBER() OVER (ORDER BY sales_person) AS salesperson_id
FROM {{ ref('stg_sales') }} 
