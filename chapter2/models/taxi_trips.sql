
{{ config(materialized='table') }}

with source as (

    select * from {{ ref('raw_taxi_trips') }}

)

select * from source

