with source as (

    select * from {{ ref('raw_crypto_data') }}

)

select Currency as currency, `Date` as date , Closing_Price_(USD) as closing_price_(USD), 24h_Open_(USD) as 24h_open_(USD), 24h_High_(USD) as 24h_high_(USD), 24h_Low_(USD) as 24h_low_(USD) from source