select payment_id,
event_timestamp,
amount,
payment_status,
merchant_id,
instrument_id
from payment_attempts
where instrument_id='PI0001'
and amount < 5
order by event_timestamp asc;