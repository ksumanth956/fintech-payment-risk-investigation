select customer_id,
payment_status,
count(*) as number_of_attempts
from payment_attempts
where customer_id in ('CUS0173', 'CUS0155')
and event_timestamp >='2026-08-12 10:00:00'
and event_timestamp < '2026-08-12 10:40:00'
group by customer_id, payment_status
order by customer_id, payment_status;