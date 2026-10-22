select case_status,
count(*) as number_of_chargebacks,
sum(disputed_amount) as total_disputed_amount,
sum(resolved_amount) as total_resolved_amount
from chargebacks
group by case_status
order by count(*) desc;