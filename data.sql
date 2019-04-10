

-- Table - person

CREATE TABLE person ( id SERIAL, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );



INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'collans', 51, 152, 'CT', 'white' );
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'robin', 25, 122, 'CT', 'white' );
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'mike', 55, 132, 'CT', 'white' );
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'null', 25, 152, 'CT', 'white' );
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ('anna', 26, 152, 'CT', 'white' );



SELECT * FROM person ORDER BY height DESC;


SELECT * FROM person ORDER BY height ASC;


SELECT * FROM person ORDER BY age DESC;


SELECT * FROM person WHERE age > 20;


SELECT * FROM person WHERE age = 18;


SELECT * FROM person WHERE age < 20 OR age > 30;


SELECT * FROM person WHERE age != 27;


SELECT * FROM person WHERE favorite_color != 'red';


SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';


SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';


SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );


SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' );



--table order



CREATE TABLE orders ( person_id SERIAL, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER );


INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 75, 'xbox', 599.99, 1 );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 24, 'pen', 12.00, 3);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 75;




-- table artist


INSERT INTO artist ( name ) VALUES ( 'neaj' );
INSERT INTO artist ( name ) VALUES ( 'mahmud' );
INSERT INTO artist ( name ) VALUES ( 'robin' );


SELECT * FROM artist ORDER BY name DESC LIMIT 10;


SELECT * FROM artist ORDER BY name ASC LIMIT 5;


SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';



-- employee 


SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT MAX(birth_date) from employee;

SELECT MIN(birth_date) from employee;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


-- invoice


SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT COUNT(*) FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;