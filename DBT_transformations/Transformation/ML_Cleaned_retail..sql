{{ config(materialized="table") }}


select *
from {{ ref('stg_ML_sales') }}