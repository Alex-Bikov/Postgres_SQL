SELECT m.pizza_name, m.price, pi.name
FROM menu m
         JOIN pizzeria pi on m.pizzeria_id = pi.id
WHERE m.id NOT IN(SELECT menu_id FROM person_order) ORDER BY 1, 2;