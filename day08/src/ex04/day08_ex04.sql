begin;
SELECT * from pizzeria;
SELECT * from pizzeria;
commit;
SELECT * from pizzeria;


begin;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
update pizzeria set rating=3.0 where name ='Pizza Hut';
commit;
SELECT * from pizzeria;