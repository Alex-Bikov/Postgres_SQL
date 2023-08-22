WITH cou as (SELECT pi.name, COUNT(*) as count_of_orders
             FROM pizzeria pi
                      JOIN menu m on pi.id = m.pizzeria_id
                      JOIN person_order po on m.id = po.menu_id
             GROUP BY pi.name
             ORDER BY 1),

     x as (SELECT DISTINCT pi.name, round(AVG(m.price), 2) as average_price
           FROM pizzeria pi
                    JOIN menu m on pi.id = m.pizzeria_id
                    JOIN person_order po on m.id = po.menu_id
           GROUP BY pi.name),

     maxi AS (SELECT pi.name, MAX(m.price) as max_price
              FROM pizzeria pi
                       JOIN menu m on pi.id = m.pizzeria_id
                       JOIN person_order po on m.id = po.menu_id
              GROUP BY pi.name
              ORDER BY 1),

     mini as (SELECT pi.name, MIN(m.price) as min_price
              FROM pizzeria pi
                       JOIN menu m on pi.id = m.pizzeria_id
                       JOIN person_order po on m.id = po.menu_id
              GROUP BY pi.name
              ORDER BY 1)
SELECT DISTINCT x.name, cou.count_of_orders, x.average_price, maxi.max_price, mini.min_price
FROM x
         JOIN cou on cou.name = x.name
         JOIN maxi on x.name = maxi.name
         JOIN mini on mini.name = x.name
ORDER BY 1;


