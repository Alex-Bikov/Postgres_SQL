SELECT m.pizza_name, m.price, pi.name as pizzeria_name, pv.visit_date
FROM person p
         JOIN person_visits pv on p.id = pv.person_id
         JOIN menu m on pv.pizzeria_id = m.pizzeria_id
         JOIN pizzeria pi on pi.id = m.pizzeria_id
WHERE p.name = 'Kate'
  and m.price BETWEEN 800 and 1000
ORDER BY 1, 2, 3;