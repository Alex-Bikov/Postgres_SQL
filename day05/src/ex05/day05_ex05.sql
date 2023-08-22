CREATE INDEX idx_person_order_order_date ON person_order (person_id, menu_id) WHERE order_date = '20220101';

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE SELECT * from person_order WHERE menu_id=1;