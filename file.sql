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
SELECT
  name
FROM
  world
WHERE
  name LIKE '%a'
  OR name LIKE '%l'