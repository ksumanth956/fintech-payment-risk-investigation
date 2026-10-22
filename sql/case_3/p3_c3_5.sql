select c.chargeback_id,
p.payment_id,
c.disputed_amount
from chargebacks as c
left join payment_attempts as p
on p.payment_id =c.payment_id
where p.payment_id is null