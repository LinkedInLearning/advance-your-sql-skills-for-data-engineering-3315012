-- avg_num_dropoff_manhattan: Average number of passengers on all trips which end in Manhattan

{{ config(materialized='table') }}

select avg(passengers) as avg
from {{ ref('taxi_trips') }}
where dropoff_borough = "Manhattan"
