insert into menu
values ((SELECT MAX(id) + 1 FROM menu), 2, 'sicilian pizza', 900);

SELECT *
FROM menu;