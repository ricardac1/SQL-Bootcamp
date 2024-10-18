CREATE FUNCTION fnc_person_visits_and_eats_on_date(IN  pperson  VARCHAR DEFAULT 'Dmitriy', pprice NUMERIC DEFAULT 500, pdate DATE DEFAULT '2022-01-08') 
RETURNS TABLE (pizzeria_name varchar) AS $$
    BEGIN
        RETURN QUERY
        SELECT DISTINCT pz.name
        FROM person_order AS po
            JOIN person AS p ON p.id = po.person_id
            JOIN menu AS m ON m.id = po.menu_id
            JOIN pizzeria AS pz ON pz.id = m.pizzeria_id
        WHERE p.name = pperson AND m.price < pprice AND po.order_date = pdate;
    END;
$$ LANGUAGE plpgsql;

SELECT * FROM fnc_person_visits_and_eats_on_date(pprice := 800);
SELECT * FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');

-- DROP FUNCTION fnc_person_visits_and_eats_on_date; 

