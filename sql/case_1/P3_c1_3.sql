select instrument_id,
count(instrument_id) as number_of_attempts_each_instrument
from payment_attempts
where amount< 5
group by instrument_id
order by count(instrument_id) desc;