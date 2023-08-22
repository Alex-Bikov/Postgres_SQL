BEGIN;
INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((generate_series((SELECT MAX(id) + 1 from person_order),
                         (SELECT MAX(id) + MAX(person_id) from person_order)
    )), (generate_series((SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person))),
        (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
        ('20230225'));


SELECT *
from person_order;

ROLLBACK;


-- SELECT generate_series((SELECT MAX(id) + 1 from person_order),
--     (SELECT MAX(id) + MAX(person_id) from person_order)
--     ), 1, 1, '20230101'