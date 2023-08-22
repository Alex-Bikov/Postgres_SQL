WITH x as (SELECT pi.name, COUNT(*) as count
           FROM pizzeria pi
                    JOIN person_visits pv on pi.id = pv.pizzeria_id
           GROUP BY pi.id, pv.pizzeria_id),
     y as (SELECT pi.name, COUNT(*) as count
           FROM pizzeria pi
                    JOIN menu m on pi.id = m.pizzeria_id
                    JOIN person_order po on m.id = po.menu_id
           GROUP BY pi.id)
SELECT x.name, x.count+y.count as total_count
FROM x
         JOIN y on x.name = y.name ORDER BY total_count DESC, name;


