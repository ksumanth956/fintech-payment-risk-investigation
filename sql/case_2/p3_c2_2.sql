select payment_status,
count(*) as number_of_attemtps
from payment_attempts
group by payment_status
order by count(*) desc;