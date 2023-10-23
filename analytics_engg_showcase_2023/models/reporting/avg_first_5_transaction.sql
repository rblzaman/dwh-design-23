
select store_id, date_diff(max(happened_at), min(happened_at), day) as day_diff from (
select store_id, happened_at, row_number() over (partition by store_id) as payment_rank
from {{ ref ('dwh_dev_store_trans')}} ) ranks
where payment_rank <=5
group by store_id