{{ config(materialized='table') }}

    SELECT 
        customer_id
    FROM {{ ref('stg_sales') }}
    WHERE customer_id IS NOT NULL
    GROUP BY customer_id