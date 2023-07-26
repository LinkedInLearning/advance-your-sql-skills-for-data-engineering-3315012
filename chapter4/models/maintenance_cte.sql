{{ config(materialized='view') }}

-- Create a CTE to filter excavator_ids based on conditions
with failing_excavators as ( 
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
)

-- Use the CTE in the main query
select job_id, excavator_id
from {{ ref('jobs') }}
where excavator_id in  (
    select excavator_id 
    from failing_excavators
) 
and job_id in (398, 417, 401, 332, 329, 340, 366, 373, 376, 423)


