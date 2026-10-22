select decline_reason,
count(*) as number_of_attemtps_each_reason
from payment_attempts
where payment_status='declined'
and decline_reason is NOT NULL
group by decline_reason
order by count(*) desc;