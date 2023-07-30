
{{ config(materialized='view') }}

select *
from {{ ref('crypto_data') }}
where currency = 'LINK'
