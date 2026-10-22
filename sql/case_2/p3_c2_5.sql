select instrument_id,
count(*) as number_of_declined_attempts_per_instrument
from payment_attempts
where payment_status ='declined'
group by instrument_id
order by count(*) desc;