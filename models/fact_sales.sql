{{ config(materialized='table') }}

-- models/fact_sales.sql
SELECT 
    sp.salesperson_id AS SalespersonID,  -- From dim_salesperson
    s.Country,                            -- From stg_sales
    p.Product_id AS ProductID,            -- From dim_product
    CAST(s.Date AS DATE) AS sale_date,    -- From stg_sales
    s.amount AS Amount,                   -- From stg_sales
    s.boxes_shipped AS BoxesShipped     -- From stg_sales
FROM {{ ref('stg_sales') }} s  -- Referencing the staging model `stg_sales`
JOIN {{ ref('dim_salesperson') }} sp 
    ON s.sales_person = sp.sales_person  -- Join on salesperson name
JOIN {{ ref('dim_product') }} p 
    ON s.product = p.product_name -- Join on product name