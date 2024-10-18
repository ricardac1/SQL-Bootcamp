COMMENT ON TABLE person_discounts IS 'Таблица скидок для клиентов';
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор (первичный ключ)';
COMMENT ON COLUMN person_discounts.person_id IS 'Уникальный идентификатор клиента (внешний ключ)';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Уникальный идентификатор пиццерии (внешний ключ)';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка для клиента';
COMMENT ON INDEX idx_person_discounts_unique IS 'Поля person_id и pizzeria_id становятся уникальными';