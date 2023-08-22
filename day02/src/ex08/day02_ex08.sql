SELECT p.name
FROM person p
         JOIN person_order po on p.id = po.person_id
         JOIN (SELECT * FROM menu m WHERE m.pizza_name = 'pepperoni pizza' OR m.pizza_name = 'mushroom pizza')
             as x
              on x.id = po.menu_id


WHERE p.gender = 'male'
  and (p.address = 'Moscow' OR p.address = 'Samara')
ORDER BY 1 DESC ;

