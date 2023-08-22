SELECT pi.name
FROM menu m
         JOIN pizzeria pi on m.pizzeria_id = pi.id
         JOIN person_visits pe on m.pizzeria_id = pe.pizzeria_id
         JOIN person p on p.id = pe.person_id
WHERE p.name = 'Dmitriy'
  and pe.visit_date = '2022-01-08'
  and m.price < 800
;

