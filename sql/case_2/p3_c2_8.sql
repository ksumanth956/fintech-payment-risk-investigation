select count(*) as number_of_declined_attemtps_in_that_window,
avg(amount) as avg_amount_attemtps,
max(amount )as highest_amount_attemtps,
min(amount) as lowest_amount_attemtps
from payment_attempts
where instrument_id ='PI0002'
and payment_status ='declined'
and event_timestamp >= '2026-08-12 10:00:00'
and event_timestamp < '2026-08-12 10:32:00' ;