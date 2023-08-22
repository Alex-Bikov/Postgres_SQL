INSERT INTO person_discounts(id,person_id, pizzeria_id, discount)
SELECT row_number() OVER(ORDER BY 1), person_id,
       pizzeria_id,
       CASE WHEN count(*) = 1 then 10.5 WHEN count(*) = 2 then 22 else 30 end
           as discount
FROM person_order
         JOIN menu m on m.id = person_order.menu_id
         JOIN pizzeria p on p.id = m.pizzeria_id
GROUP BY person_id, pizzeria_id;


