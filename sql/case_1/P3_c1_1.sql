select count(*) as total_payment_attempts,
avg(amount) as average_amount,
min(amount) as minimum_amount,
max(amount) as maximum_amount
from payment_attempts