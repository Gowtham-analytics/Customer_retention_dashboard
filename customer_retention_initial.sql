WITH Audio AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Audio'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
cameras AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Cameras and camcorders '
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
cellphones AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Cell phones'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
computers AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Computers'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
games AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Games and Toys'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
homeappliances AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Home Appliances'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
music AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'Music, Movies and Audio Books'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
),
tv AS (
SELECT
	DISTINCT(customerkey) AS customer_key,
	categoryname AS category_name,
	countryfull AS country,
	gender,
	age,
	subcategoryname AS subcategory_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024
FROM
	customer_retention
WHERE
	categoryname = 'TV and Video'
GROUP BY
	customer_key,
	category_name,
	country,
	gender,
	age,
	subcategory_name
ORDER BY
	customer_key
)

SELECT *
FROM Audio
UNION ALL
SELECT *
FROM cameras
UNION ALL
SELECT *
FROM cellphones
UNION ALL
SELECT *
FROM computers
UNION ALL
SELECT *
FROM games
UNION ALL
SELECT *
FROM homeappliances
UNION ALL
SELECT *
FROM music
UNION ALL
SELECT *
FROM tv
ORDER BY
	category_name,
	customer_key