select payment_id,
event_timestamp,
amount,
payment_status,
decline_reason
from payment_attempts
where instrument_id ='PI0001'
and payment_status ='declined'
order by event_timestamp asc;