SELECT p.name, COUNT(*) as count_of_visits
FROM person_visits pv JOIN person p on pv.person_id = p.id
GROUP BY pv.person_id, p.name ORDER BY count_of_visits DESC, pv.person_id LIMIT 4;