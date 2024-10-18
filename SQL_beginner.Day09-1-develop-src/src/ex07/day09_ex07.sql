CREATE FUNCTION func_minimum (VARIADIC ARR NUMERIC[]) RETURNS NUMERIC
AS $$
    SELECT MIN(num) 
    FROM UNNEST (arr) AS num;
$$ LANGUAGE SQL;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);

-- DROP FUNCTION func_minimum;