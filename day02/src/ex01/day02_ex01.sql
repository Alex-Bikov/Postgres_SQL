select d::date as missing_date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') as d
         LEFT JOIN (Select * FROM person_visits WHERE person_id = 1 OR person_id = 2) as x
                   ON d = x.visit_date
WHERE person_id IS NULL ORDER BY person_id
;
