with source as (

    select * from {{ ref('raw_crypto_data') }}

)

select Currency as currency, `Date` as date , Closing_Price_USD as closing_price, 24h_Open_USD as 24h_open, 24h_High_USD as 24h_high, 24h_Low_USD as 24h_low from source