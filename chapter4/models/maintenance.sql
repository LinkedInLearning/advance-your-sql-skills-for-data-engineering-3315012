-- maintenance: Identify the excavators that are not "ready" in a list of jobs

{{ config(materialized='view') }}

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 398

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 417

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 401

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 332

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 329

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 340
    
union
select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 366

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 373

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 376

union

select job_id,
    excavator_id
from {{ ref('jobs') }}
where excavator_id in (
        select excavator_id
        from {{ ref('excavators') }}
        where oil_level != 'P'
            or air_filter != 'P'
            or coolant_level != 'P'
            or hydraulic_valves != 'P'
    )
    and job_id = 423;