{{ config(materialized='table') }}

-- models/dim_product.sql
SELECT 
    DISTINCT product AS product_name,
    ROW_NUMBER() OVER (ORDER BY product) AS Product_id
    FROM {{ ref('stg_sales') }} -- Referencing the source table

