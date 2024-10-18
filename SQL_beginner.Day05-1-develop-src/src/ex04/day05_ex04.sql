CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);
SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT *
FROM menu
WHERE pizzeria_id = 3;
-- DROP INDEX IF EXISTS idx_menu_unique;