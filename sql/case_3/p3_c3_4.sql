select c.chargeback_id,
p.payment_id,
p.amount,
c.disputed_amount,
(c.disputed_amount - p.amount) as difference_between_amounts,
c.reason,
c.case_status
from chargebacks as c
left join payment_attempts as p
on p.payment_id = c.payment_id;

