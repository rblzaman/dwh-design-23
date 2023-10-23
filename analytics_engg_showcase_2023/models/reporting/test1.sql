select store_id, sum(amount) as total_amount
from {{ ref ('dwh_dev_store_trans')}}
where status = 'accepted'
group by store_id
order by total_amount desc
limit 10