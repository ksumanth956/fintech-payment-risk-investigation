select payment_status,
count(payment_status) as number_of_records
from payment_attempts
where instrument_id = 'PI0001'
and amount < 5
group by payment_status
order by count(payment_status) desc;