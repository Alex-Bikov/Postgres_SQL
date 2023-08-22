WITH maxi as (SELECT address, MAX(age) FROM person GROUP BY address),

     mini as (SELECT address, MIN(age) FROM person GROUP BY address),

     average as (SELECT address, round(AVG(age), 2) as average FROM person GROUP BY address),

     formula as (SELECT maxi.address,
                        round(maxi.max - mini.min / maxi.max :: numeric, 2) as formula
                 FROM maxi
                          JOIN mini on
                     maxi.address = mini.address)


SELECT maxi.address,
       formula.formula,
       average.average,
       CASE WHEN formula > average.average THEN True else FALSE END AS comparison
FROM maxi
         JOIN mini on maxi.address = mini.address
         JOIN average ON maxi.address = average.address
         JOIN formula ON formula.address = maxi.address
ORDER BY 1;
;
