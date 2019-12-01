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
SELECT
  name,
  length(name)
FROM
  world
WHERE
  length(name) = 5
  and region = 'Europe'