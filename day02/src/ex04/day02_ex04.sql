SELECT m.pizza_name, p.name as pizzeria_name, m.price
FROM menu as m
         JOIN pizzeria p on m.pizzeria_id = p.id
WHERE m.pizza_name = 'pepperoni pizza'
   or m.pizza_name = 'mushroom pizza'
ORDER BY 1, 2
;