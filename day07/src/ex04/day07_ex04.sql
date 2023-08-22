SELECT p.name, COUNT(*)
FROM person p
         join person_visits pv on p.id = pv.person_id
GROUP BY p.name
HAVING COUNT(*) > 3;


