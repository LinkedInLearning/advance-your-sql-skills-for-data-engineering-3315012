-- xrp: Update the materialization to ensure the best strategy is selected
<<<<<<< HEAD
{{ config(materialized='table') }}
=======
{{ config(materialized='view') }}
>>>>>>> main

select *
from {{ ref('crypto_data') }}
where currency = 'XRP'
