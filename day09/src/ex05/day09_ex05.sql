CREATE FUNCTION fnc_persons(pgender varchar DEFAULT 'female')
    RETURNS table
            (
                p_name varchar
            )
AS
$$
BEGIN
    RETURN QUERY SELECT name as p_name from person WHERE gender = pgender;

end;
$$ LANGUAGE plpgsql;


SELECT *
FROM fnc_persons(pgender := 'male');

select *
from fnc_persons();


DROP FUNCTION fnc_persons();









