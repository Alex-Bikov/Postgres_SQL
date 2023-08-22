SELECT name FROM pizzeria
WHERE id NOT IN (Select pizzeria_id FROM person_visits)
;

SELECT name FROM pizzeria
WHERE NOT EXISTS (Select 1 FROM person_visits WHERE pizzeria.id = pizzeria_id)
;
