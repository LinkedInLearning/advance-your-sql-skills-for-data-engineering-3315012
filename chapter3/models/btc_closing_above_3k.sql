
{{ config(materialized='table') }}

select *
from {{ ref('btc') }}
where closing_price > 3000;
