with store_device as (

select d.id as device_id, 
d.type, 
d.store_id,
s.name,
s.city,
s.country,
s.typology
from {{ ref ('stg_device')}} d
left join {{ref ('stg_store')}}  s
on d.store_id = s.id
),

store_device_trans as (
  select sd.* , 
    t.id as transaction_id,
    t.product_name,
    t.amount,
    t.category_name,
    t.status,
    t.happened_at
  from store_device sd
  right join {{ ref ('stg_transaction')}} t
  on sd.device_id = t.device_id
)

select store_id, sum(amount) as total_amount
from store_device_trans
group by store_id
order by total_amount desc
limit 10