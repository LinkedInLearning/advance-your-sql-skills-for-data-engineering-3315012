{% test ensure_cohort_size_max_100(model, column_name) %}

with cohort_count_cte as (
    select cohort, count(*) as cohort_count
    from {{ model }} 
    group by {{ column_name }} 
)

select cohort, cohort_count
from cohort_count_cte
where cohort_count > 100

{% endtest %}