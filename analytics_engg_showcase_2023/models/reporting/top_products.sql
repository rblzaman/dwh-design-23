
select product_name, sum(amount) as total_amount
from {{ ref ('dwh_dev_store_trans')}}
where status = 'accepted'
group by product_name
order by total_amount desc
limit 10