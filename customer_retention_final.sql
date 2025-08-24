WITH customer_order AS (
SELECT
	customerkey AS customer_key,
	categoryname AS category_name,
	orderdate,
	countryfull AS country,
	subcategoryname AS subcategory_name,
	age
FROM
	customer_retention
)

SELECT
	customer_key,
	category_name,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2015 THEN 1 ELSE 0 END) AS order_2015,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2016 THEN 1 ELSE 0 END) AS order_2016,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2017 THEN 1 ELSE 0 END) AS order_2017,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2018 THEN 1 ELSE 0 END) AS order_2018,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2019 THEN 1 ELSE 0 END) AS order_2019,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2020 THEN 1 ELSE 0 END) AS order_2020,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2021 THEN 1 ELSE 0 END) AS order_2021,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2022 THEN 1 ELSE 0 END) AS order_2022,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2023 THEN 1 ELSE 0 END) AS order_2023,
	MAX(CASE WHEN EXTRACT(YEAR FROM orderdate) = 2024 THEN 1 ELSE 0 END) AS order_2024,
	country,
	subcategory_name,
	age
FROM
	customer_order
GROUP BY
	customer_key,
	category_name,
	country,
	subcategory_name,
	age
ORDER BY
	category_name,
	customer_key