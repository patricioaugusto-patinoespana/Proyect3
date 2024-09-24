DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS items CASCADE;
DROP TABLE IF EXISTS sales CASCADE;
--ºººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººººº
CREATE TABLE customers(
	customer VARCHAR(15) PRIMARY KEY NOT NULL,
	type_c VARCHAR(8) NOT NULL,
	consumption_c VARCHAR(7) ,
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
