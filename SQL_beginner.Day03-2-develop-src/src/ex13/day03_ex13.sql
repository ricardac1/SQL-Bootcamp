/*
 Напишите 2 инструкции SQL, которые удаляют все новые заказы из упражнения № 12 в зависимости от даты заказа
 Затем удалите "греческую пиццу" из меню.
 */
DELETE FROM person_order
WHERE order_date = '2022-02-25';
DELETE FROM menu
WHERE pizza_name = 'greek pizza';