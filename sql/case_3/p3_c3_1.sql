select count(*) as number_of_Chargebacks,
sum(disputed_amount) as total_disputed_amount,
avg(disputed_amount)as average_disputed_amount,
min(disputed_amount) as minimum_disputed_amount,
max(disputed_amount) as maximum_disputed_amount
from chargebacks;