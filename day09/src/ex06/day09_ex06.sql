CREATE FUNCTION fnc_person_visits_and_eats_on_date(pperson varchar DEFAULT 'Dmitriy', pprice integer DEFAULT 500,
                                                   pdate date DEFAULT '2022-01-08')
    RETURNS table
            (
                pi_name varchar
            )
AS
$$
BEGIN
    RETURN QUERY SELECT DISTINCT pi.name
                 from pizzeria pi
                          JOIN menu m on pi.id = m.pizzeria_id
                          JOIN person_visits pv on pi.id = pv.pizzeria_id
                          JOIN person p on p.id = pv.person_id
                 WHERE p.name = pperson
                   AND m.price < pprice
                   AND pv.visit_date = pdate;

end;
$$ LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');


DROP FUNCTION fnc_person_visits_and_eats_on_date();



SELECT DISTINCT pi.name
from pizzeria pi
         JOIN menu m on pi.id = m.pizzeria_id
         JOIN person_visits pv on pi.id = pv.pizzeria_id
         JOIN person p on p.id = pv.person_id
WHERE p.name = 'Anna'
  AND m.price < 1300
  AND pv.visit_date = '2022-01-01';

SELECT DISTINCT pi.name
from pizzeria pi
         JOIN menu m on pi.id = m.pizzeria_id
         JOIN person_visits pv on pi.id = pv.pizzeria_id
         JOIN person p on p.id = pv.person_id
WHERE p.name = 'Dmitriy'
  AND m.price < 500
  AND pv.visit_date = '2022-01-08';







