SELECT (SELECT name FROM person WHERE person.id = pv.person_id) as person_name,
       (SELECT name FROM pizzeria WHERE pizzeria.id = pv.pizzeria_id)                              AS pizzeria_name
FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '20220107' AND '20220109') as pv;
