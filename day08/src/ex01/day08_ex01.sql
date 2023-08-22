begin;
SELECT * from pizzeria;
update pizzeria set rating=3.6 where name ='Pizza Hut';
commit;
SELECT * from pizzeria;

