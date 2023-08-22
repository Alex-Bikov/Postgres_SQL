CREATE FUNCTION func_minimum(VARIADIC arr numeric[])
    RETURNS TABLE (number numeric)
AS
$$
BEGIN
    RETURN QUERY SELECT min(elem) as min FROM unnest(arr) as elem;

END;
$$ LANGUAGE plpgsql;


DROP FUNCTION func_minimum(VARIADIC arr numeric[]);


SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);








