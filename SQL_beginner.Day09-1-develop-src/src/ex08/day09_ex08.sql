CREATE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10) RETURNS TABLE (number integer) 
AS $$
DECLARE 
    fib1 integer := 0;
    fib2 integer := 1;
BEGIN

    number := fib1;
    RETURN NEXT;
    
    number := fib2;
    RETURN NEXT;
    
    WHILE fib1 + fib2 < pstop LOOP
        number := fib1 + fib2;
        fib1 := fib2;
        fib2 := number;
        RETURN NEXT;
    END LOOP;
END;
$$ LANGUAGE plpgsql;


SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci();

-- DROP FUNCTION fnc_fibonacci;