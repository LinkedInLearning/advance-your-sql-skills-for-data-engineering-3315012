{{ config(materialized='view') }}

with source as (
    select * from {{ ref('raw_excavators') }}
)

select excavator_id, oil_level, air_filter, coolant_level, hydraulic_valves from source