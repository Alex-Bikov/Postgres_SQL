CREATE FUNCTION fnc_persons_male()
    RETURNS table
            (
                p_name varchar
            )
AS
$$
BEGIN
    RETURN QUERY SELECT name as p_name from person WHERE gender = 'male';

end;
$$ LANGUAGE plpgsql;

CREATE FUNCTION fnc_persons_female()
    RETURNS table
            (
                p_name varchar
            )
AS
$$
BEGIN
    RETURN QUERY SELECT name as p_name from person WHERE gender = 'female';

end;
$$ LANGUAGE plpgsql;


SELECT *
FROM fnc_persons_male();

SELECT *
FROM fnc_persons_female();

DROP FUNCTION fnc_persons_male();
DROP FUNCTION fnc_persons_female();








