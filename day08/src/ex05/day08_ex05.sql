begin;
SELECT sum(rating) FROM pizzeria;
SELECT sum(rating) FROM pizzeria;
commit;
SELECT sum(rating) FROM pizzeria;


begin;
update pizzeria set rating=1 where name ='Pizza Hut';
commit;
SELECT sum(rating) FROM pizzeria;


