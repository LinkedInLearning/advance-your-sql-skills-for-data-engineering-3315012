
{{ config(materialized='table') }}

select avg(passengers) as avg
from {{ ref('taxi_trips') }}
where dropoff_borough = "Manhattan"
