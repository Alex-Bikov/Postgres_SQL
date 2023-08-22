CREATE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10)
    RETURNS TABLE (number integer) AS
$$
BEGIN
     RETURN QUERY  WITH RECURSIVE fibonacci_numbers(val1, val2, step) AS (
    -- нерекурсивная часть
    VALUES (1, 1, 1)
    UNION ALL
    -- рекурсивная часть
    SELECT val2, val1 + val2, step + 1
    FROM fibonacci_numbers
    WHERE val2 < 1000) SELECT val1 FROM fibonacci_numbers as fibonacci_numbers WHERE val1 < pstop;


END;
$$
LANGUAGE plpgsql;

DROP FUNCTION fnc_fibonacci(pstop integer);

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();







