insert into person_order
values ((SELECT MAX(id) + 1 FROM person_order), (SELECT id from person WHERE name = 'Denis'),
        (SELECT id FROM menu WHERE pizza_name='sicilian pizza'), '2022-02-24');

insert into person_order
values ((SELECT MAX(id) + 1 FROM person_order), (SELECT id from person WHERE name = 'Irina'),
        (SELECT id FROM menu WHERE pizza_name='sicilian pizza'), '2022-02-24');
