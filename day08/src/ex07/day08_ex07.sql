begin;
    update pizzeria set rating=4 where name ='Pizza Hut';
update pizzeria set rating=5 where name ='Dominos';
commit;


begin;
update pizzeria set rating=4 where name ='Dominos';
update pizzeria set rating=5 where name ='Pizza Hut';
commit;


