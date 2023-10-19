with source as (
    select * from {{source ('sumup_dwh_23','store')}}
)

select * from source 