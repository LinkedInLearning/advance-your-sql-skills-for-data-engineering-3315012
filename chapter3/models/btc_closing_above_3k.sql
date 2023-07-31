-- btc_closing_above_3k: Update the materialization to ensure the best strategy is selected
{{ config(materialized='table') }}

select *
from {{ ref('btc') }}
where closing_price > 3000;
