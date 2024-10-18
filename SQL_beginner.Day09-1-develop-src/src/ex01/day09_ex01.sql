CREATE FUNCTION fnc_trg_person_update_audit() RETURNS TRIGGER 
AS $$ 
    BEGIN 
        IF((TG_OP) = 'UPDATE') THEN
            INSERT INTO person_audit 
            VALUES (NOW(), 'U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
        END IF;
        RETURN NULL;
    END 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_update_audit
    AFTER UPDATE ON person
    FOR EACH ROW EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;

-- SELECT * FROM person_audit;
-- SELECT * FROM person;