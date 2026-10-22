select count(*) as number_of_payment_attempts
from payment_attempts
where amount< 5