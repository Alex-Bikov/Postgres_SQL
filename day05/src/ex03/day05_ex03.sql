CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id, order_date) WHERE person_id = 8 AND menu_id = 19;

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYSE SELECT menu_id FROM person_order WHERE menu_id = 5;