
select type as device_type,(count_device/total)*100 as transaction_percentage from (
  select type, count(*) count_device , sum(count(*)) over() as total   
  from {{ ref ('dwh_dev_store_trans')}}
  where status = 'accepted'
  group by type
  order by count_device desc 
)


