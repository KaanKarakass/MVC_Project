USE sakila;
CREATE TABLE foodcart(
id int NOT NULL AUTO_INCREMENT,
item varchar(45) NOT NULL,
price double,
PRIMARY KEY(id)
);

INSERT INTO sakila.foodcart(item,price)
VALUES("Pizza","250.5");

INSERT INTO sakila.foodcart(item,price)
VALUES("Briyani","100");

INSERT INTO sakila.foodcart(item,price)
VALUES("Chilly Panner","120");

INSERT INTO sakila.foodcart(item,price)
VALUES("Chicken","150.5");

INSERT INTO sakila.foodcart(item,price)
VALUES("Egg","50");

