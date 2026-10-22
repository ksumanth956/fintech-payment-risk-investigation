select customer_id,
payment_id,
event_timestamp,
amount,
payment_status,
decline_reason
from payment_attempts
where customer_id in ('CUS0173' , 'CUS0155')
ORDER BY event_timestamp asc;