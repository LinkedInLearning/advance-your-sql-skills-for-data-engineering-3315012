-- over_nine_miles: All columns with taxi trip with distance over 9 miles

{{ config(materialized='table') }}

select *
from {{ ref('taxi_trips') }}
where distance > 9
