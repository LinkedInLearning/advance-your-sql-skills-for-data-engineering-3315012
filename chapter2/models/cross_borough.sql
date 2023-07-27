{{ config(materialized='table') }}

select *
from {{ ref('taxi_trips') }}
where pickup_borough != dropoff_borough
