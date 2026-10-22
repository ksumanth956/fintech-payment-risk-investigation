select merchant_id,
count(*)as total_payment_attempts,
sum(case when payment_status ='approved' then 1 else 0 end) as approved_attempts,
sum(case when payment_status ='declined' then 1 else 0 end) as declined_attempts,
sum(amount) as total_attempt_amount
from payment_attempts 
group by merchant_id
order by count(*) desc;