-- DBT Model that creates the chapter2/taxi_trips table.

select * from {{ ref('raw_taxi_trips') }}

