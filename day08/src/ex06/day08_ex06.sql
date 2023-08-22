begin;
SELECT sum(rating) FROM pizzeria;
SELECT sum(rating) FROM pizzeria;
commit;
SELECT sum(rating) FROM pizzeria;


begin;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
update pizzeria set rating=5 where name ='Pizza Hut';
commit;
SELECT sum(rating) FROM pizzeria;


