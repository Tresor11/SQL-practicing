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
SELECT COUNT(DISTINCT yr)
FROM nobel
WHERE yr NOT IN (SELECT DISTINCT yr
FROM nobel
WHERE subject = 'Medicine');
SELECT yr
FROM nobel
WHERE yr NOT IN(SELECT yr
FROM nobel
WHERE subject IN ('Chemistry','Physics'));
SELECT DISTINCT yr
FROM nobel
WHERE subject='Medicine'
  AND yr NOT IN(SELECT yr
  FROM nobel
  WHERE subject='Literature')
  AND yr NOT IN (SELECT yr
  FROM nobel
  WHERE subject='Peace');
SELECT region, name, population
FROM bbc x
WHERE population <= ALL (SELECT population
FROM bbc y
WHERE y.region=x.region AND population>0);
SELECT name, region, population
FROM bbc x
WHERE 50000 < ALL (SELECT population
FROM bbc y
WHERE x.region=y.region AND y.population>0);
SELECT name, region
FROM bbc x
WHERE population < ALL (SELECT population/3
FROM bbc y
WHERE y.region = x.region AND y.name != x.name);
SELECT name
FROM bbc
WHERE gdp > (SELECT MAX(gdp)
FROM bbc
WHERE region = 'Africa');
SELECT SUM(population)
FROM bbc
WHERE region = 'Europe';