SELECT
  name,
  population
FROM
  world
WHERE
  population BETWEEN 1000000
  AND 1250000;
SELECT
  name,
  population
FROM
  world
WHERE
  name LIKE "Al%";
SELECT
  name
FROM
  world
WHERE
  name LIKE '%a'
  OR name LIKE '%l';
SELECT
  name,
  length(name)
FROM
  world
WHERE
  length(name) = 5
  and region = 'Europe';
SELECT
  name,
  area * 2
FROM
  world
WHERE
  population = 64000;
SELECT
  name,
  area,
  population
FROM
  world
WHERE
  area > 50000
  AND population < 10000000;
SELECT
  name,
  population / area
FROM
  world
WHERE
  name IN ('China', 'Nigeria', 'France', 'Australia');
SELECT name
FROM world
WHERE name LIKE 'U%';
SELECT population
FROM world
WHERE name = 'United Kingdom';
SELECT name, population / 10
FROM world
WHERE population < 10000;
SELECT name, population
FROM world
WHERE continent IN ('Europe', 'Asia');