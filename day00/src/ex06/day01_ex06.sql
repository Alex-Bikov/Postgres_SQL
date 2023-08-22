SELECT (SELECT name FROM person WHERE person_order.person_id = person.id) as name,
       (SELECT CASE WHEN name = 'Denis' then  true else false END
FROM person
WHERE person.id = person_order.person_id) as check_name

from person_order
WHERE (menu_id = 13
   OR menu_id = 14
   OR menu_id = 18)
  AND order_date = '20220107';