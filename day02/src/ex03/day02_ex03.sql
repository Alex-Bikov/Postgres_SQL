WITH d AS (select yy::date as missing_date
           FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') as yy)
SELECT d.missing_date
FROM d
         LEFT JOIN (Select * FROM person_visits WHERE person_id = 1 OR person_id = 2) as x
                   ON d.missing_date = x.visit_date
WHERE person_id IS NULL
ORDER BY person_id
;
