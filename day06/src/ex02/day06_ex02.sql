SELECT p.name, m.pizza_name, m.price, m.price * (1 - pd.discount / 100) as discount_price, p2.name
FROM person p
         JOIN person_order po on p.id = po.person_id
         JOIN menu m on m.id = po.menu_id
         JOIN pizzeria p2 on p2.id = m.pizzeria_id
         JOIN person_discounts pd on p.id = pd.person_id
ORDER BY 1, 2;


