
{{ config(materialized='table') }}

SELECT 
        invoicedate_date,
        EXTRACT(YEAR FROM invoicedate_date) AS Year,
        EXTRACT(MONTH FROM invoicedate_date) AS Month,
        EXTRACT(DAY FROM invoicedate_date) AS Day,
        TO_CHAR(invoicedate_date, 'Day') AS WeekdayName,
    FROM {{ ref('stg_sales') }}
    WHERE invoicedate_date IS NOT NULL
    GROUP BY invoicedate_date