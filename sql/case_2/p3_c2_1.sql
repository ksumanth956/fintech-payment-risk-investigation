select payment_status,
decline_reason,
count(*) as number_of_attempts_each_status,
count(*) as Number_of_each_recorded_decline_reason
from payment_attempts
group by payment_status, decline_reason
order by count(*) desc;