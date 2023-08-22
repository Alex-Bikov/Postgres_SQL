SELECT person_id
FROM person_visits
WHERE (visit_date BETWEEN '20220106' and '20220109')
   or person_id = 2 ORDER BY person_id DESC;