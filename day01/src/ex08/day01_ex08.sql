SELECT order_date, name || '(age:'||age||')' as person_information
FROM person_order
NATURAL JOIN (select id as person_id, name, age FROM person) as y
ORDER BY 1,2
;