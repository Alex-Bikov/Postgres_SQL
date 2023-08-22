CREATE INDEX idx_person_name on person (upper (name));

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYSE SELECT name FROM person WHERE upper(name)='ANNA';