SELECT m.pizza_name, p.name as pizzeria_name_1, p2.name as pizzeria_name_2, m.price
FROM menu m
    JOIN menu m2 ON m.pizza_name = m2.pizza_name
JOIN pizzeria p on p.id = m.pizzeria_id
JOIN pizzeria p2 on p2.id = m2.pizzeria_id WHERE
  m.price = m2.price
    AND m.pizzeria_id > m2.pizzeria_id ORDER BY 1;
;



