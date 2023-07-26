{{ config(materialized='table') }}

with source as (
    select * from {{ ref('raw_jobs') }}
)

select job_id, excavator_id, city, manager from source