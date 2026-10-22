select reason,
count(*) as number_of_chargebacks,
sum(disputed_amount) as total_disputed_amount,
avg(disputed_amount) as average_disputed_amount
from chargebacks
group by reason
order by count(*) desc;