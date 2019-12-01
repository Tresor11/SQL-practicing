SELECT
  name,
  population
FROM
  world
WHERE
  population BETWEEN 1000000
  AND 1250000
SELECT
  name,
  population
FROM
  world
WHERE
  name LIKE "Al%"