select ip_address,
device_id,
count(*) as number_of_attempts_ip_devices
from payment_attempts
where instrument_id ='PI0001'
and amount < 5
group by ip_address, device_id
order by count(*) desc;