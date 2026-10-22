select merchant_id,
ip_address,
device_id,
count(*) as number_of_attempts
from payment_attempts
where instrument_id ='PI0002'
and amount< 5 
group by merchant_id, ip_address, device_id
order by count(*) desc;