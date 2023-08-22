SELECT p1.name, p2.name, p1.address
FROM person p1
         JOIN person p2 on p1.address = p2.address
WHERE p1.id > p2.id

ORDER BY 1, 2, 3;