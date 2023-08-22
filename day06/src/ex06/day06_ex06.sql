CREATE sequence seq_person_discounts start WITH 1 increment by 1;

SELECT setval('seq_person_disCOUNTs', (SELECT MAX(id) + 1 FROM person_discounts));
alter TABLE person_discounts
    alter column id set DEFAULT nextval('seq_person_disCOUNTs');


