select instrument_id, 
customer_id
from payment_attempts
where instrument_id in ('PI0001' , 'PI0002');