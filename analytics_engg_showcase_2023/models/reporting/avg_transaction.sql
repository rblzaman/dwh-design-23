
select typology ,country, avg(amount) as avg_amount
from {{ ref ('dwh_dev_store_trans')}}
where status = 'accepted'
group by 1,2
order by 1,2 desc
limit 100