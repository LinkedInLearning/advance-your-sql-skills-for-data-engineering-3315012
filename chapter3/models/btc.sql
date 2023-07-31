-- btc: Update the materialization to ensure the best strategy is selected
{{ config(materialized='view') }}

select *
from {{ ref('crypto_data') }}
where currency = 'BTC'
