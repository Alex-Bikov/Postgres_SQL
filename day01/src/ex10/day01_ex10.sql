SELECT person.name as person_name,
       pizza_name,
       p.name      as pizzeria_name
FROM person_order
         JOIN person on person_order.person_id = person.id
         JOIN menu m on m.id = person_order.menu_id
         JOIN pizzeria p on m.pizzeria_id = p.id
ORDER BY person_name, pizza_name, pizzeria_name
;