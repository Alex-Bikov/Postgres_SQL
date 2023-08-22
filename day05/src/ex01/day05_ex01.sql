SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYSE SELECT pizza_name, p.name as pizzeria_name
 FROM menu JOIN pizzeria p on p.id = menu.pizzeria_id;