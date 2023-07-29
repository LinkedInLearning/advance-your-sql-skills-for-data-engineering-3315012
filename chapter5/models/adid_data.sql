{{ config(materialized='view') }}

with source as (
    select * from {{ ref('raw_adid_data') }}
)

select adid, latitude, longitude, city, eventdate, cohort from source