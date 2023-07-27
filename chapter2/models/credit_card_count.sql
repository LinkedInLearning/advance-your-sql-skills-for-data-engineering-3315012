
{{ config(materialized='table') }}

select payment, count(payment) as count
from {{ ref('taxi_trips') }}
where payment = "credit card"
