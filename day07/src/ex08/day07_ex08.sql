select p.address, pi.name, COUNT(*) as count_of_orders
from pizzeria pi
         JOIN menu m on pi.id = m.pizzeria_id
         JOIN person_order po on m.id = po.menu_id
         JOIN person p on p.id = po.person_id GROUP BY pi.name, p.address ORDER BY 1,2;


