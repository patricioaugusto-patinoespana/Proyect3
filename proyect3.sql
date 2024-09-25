DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS items CASCADE;
DROP TABLE IF EXISTS sales CASCADE;
--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE TABLE customers(
	customer VARCHAR(15) PRIMARY KEY NOT NULL,
	type_c VARCHAR(8) NOT NULL,
	consumption_c VARCHAR(10) ,
	location_c 	VARCHAR(30)
);
	
--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE TABLE items(
	item VARCHAR(9) PRIMARY KEY NOT NULL,
	description VARCHAR(50) NOT NULL,
	item_type INT NOT NULL,
	des_i_type VARCHAR(30) NOT NULL,
	item_group VARCHAR(30) NOT NULL,
	unit_measure VARCHAR(4)
);
--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE TABLE sales(
	period_s INT NOT NULL,
	item VARCHAR(9) NOT NULL,
	quantity NUMERIC ,
	sales NUMERIC ,
	store VARCHAR(7) NOT NULL,
	customer VARCHAR(15)NOT NULL,
	PRIMARY KEY (period_s,item,store, customer),
	FOREIGN KEY (item) REFERENCES items(item),
	FOREIGN KEY (customer) REFERENCES customers(customer)
);

--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE VIEW sales_store
	as 
	select store, sum (sales) from sales
	group by store;
	
	select* from sales_store;

--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE VIEW sales_location
	as
	select location_c, sum(sales) from customers, sales
	where customers.customer = sales.customer
	group by location_c;

	select* from sales_location;

--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE VIEW  sales_zone 
	as
	select consumption_c, sum(sales) from customers, sales
	where customers.customer = sales.customer
	group by consumption_c;

	select* from sales_zone;

--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE VIEW item_group 
	AS
	SELECT items.item_group, SUM(sales.sales) AS total_sales
	FROM items
	JOIN sales ON items.item = sales.item
	GROUP BY items.item_group
	ORDER BY total_sales DESC;

	SELECT * FROM item_group;

--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE VIEW item_subgroup 
	AS
	SELECT items.des_i_type, item_group, SUM(sales.sales) AS total_sales
	FROM items
	JOIN sales ON items.item = sales.item
	GROUP BY des_i_type, item_group
	ORDER BY total_sales DESC
	limit 10;

	SELECT * FROM item_subgroup;

--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
