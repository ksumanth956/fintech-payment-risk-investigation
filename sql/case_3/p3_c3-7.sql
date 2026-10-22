select p.customer_id,
count(*) as number_of_chargebacks,
sum(c.disputed_amount) as total_disputed_amount
from payment_attempts as p
join chargebacks as c 
on c.payment_id = p.payment_id
group by p.customer_id
order by count(*) desc
limit 5;