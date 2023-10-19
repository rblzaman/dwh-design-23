with source as (
    select * from {{source ('sumup_dwh_23','device')}}
)

select * from source 