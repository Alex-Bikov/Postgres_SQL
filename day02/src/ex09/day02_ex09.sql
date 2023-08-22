SELECT DISTINCT x.name
FROM (SELECT * FROM person WHERE gender = 'female') as x
         JOIN person_order po on x.id = po.person_id
         JOIN (SELECT * FROM menu WHERE pizza_name = 'cheese pizza' or pizza_name = 'pepperoni pizza') as y
              on y.id = po.menu_id
ORDER BY 1
;
