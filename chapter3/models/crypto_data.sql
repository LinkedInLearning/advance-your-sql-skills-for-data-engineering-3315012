-- crypto_data: Update the materialization to ensure the best strategy is selected
{{ config(materialized='table') }}

with source as (

    select * from {{ ref('raw_crypto_data') }}

)

select currency, detail_date, closing_price, 24_hour_open, 24h_high_usd, 24h_low_usd from source