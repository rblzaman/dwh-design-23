with source as (
    select * from {{source ('sumup_dwh_23','transaction')}}
)
select * from source 