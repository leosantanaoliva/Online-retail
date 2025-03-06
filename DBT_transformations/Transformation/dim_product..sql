{{ config(materialized='table') }}


SELECT 
        stock_code,
        product_description,
    FROM {{ ref('stg_sales') }}
    WHERE stock_code IS NOT NULL
    GROUP BY stock_code, product_description