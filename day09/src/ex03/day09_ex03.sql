CREATE OR REPLACE FUNCTION fnc_trg_person_audit() RETURNS TRIGGER AS
$person_audit$
BEGIN
    IF (TG_OP = 'DELETE') THEN
        INSERT INTO person_audit (type_event, row_id, name, age, gender, address)
        VALUES ('D', old.id, old.name, old.age, old.gender, old.address);
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO person_audit (type_event, row_id, name, age, gender, address)
        VALUES ('U', old.id, old.name, old.age, old.gender, old.address);
    ELSIF (TG_OP = 'INSERT') THEN
        INSERT INTO person_audit (row_id, name, age, gender, address)
        VALUES (NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
    END IF;
    RETURN NULL;
END;
$person_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_audit
    AFTER DELETE OR UPDATE OR INSERT
    ON person
    FOR EACH ROW
EXECUTE FUNCTION fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address)  VALUES (10,'Damir', 22, 'male', 'Irkutsk');
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;

delete from person_audit;
DROP trigger trg_person_delete_audit on person;
DROP trigger trg_person_update_audit on person;
DROP trigger trg_person_insert_audit on person;
DROP FUNCTION fnc_trg_person_insert_audit();
DROP FUNCTION fnc_trg_person_delete_audit();
DROP FUNCTION fnc_trg_person_update_audit();






