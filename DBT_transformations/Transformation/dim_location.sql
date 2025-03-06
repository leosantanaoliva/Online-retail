{{ config(materialized='table') }}


 SELECT 
        Country,
    FROM {{ ref('stg_sales') }}
    WHERE Country IS NOT NULL
    GROUP BY Country