ALTER DATABASE SteamData CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS orderProduct;
DROP TABLE IF EXISTS order;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  customerId binary(16) not null,
  customerName varchar(48) not null,
  customerStreet varchar(128) not null,
  customerCity varchar(64) not null,
  customerZip varchar(12) not null,
  PRIMARY KEY (customerId)
);

CREATE TABLE product (
  productId binary(16) not null,
  orderProductId binary(16) not null,
  productPrice decimal (4,2),
  PRIMARY KEY (productId)
);

CREATE TABLE order (
  orderId binary(16) not null,
  orderCustomerId binary(16) not null,
  orderProductId binary(16) not null,
  orderDateTime datetime(6) not null,
  INDEX(orderCustomerId),
  INDEX(orderProductId),
  FOREIGN KEY(orderCustomerId) REFERENCES customer(customerId),
  FOREIGN KEY(orderProductId) REFERENCES product(productId),
  PRIMARY KEY (orderId)
);

CREATE TABLE orderProduct (
  orderProductCustomerId binary(16) not null,
  orderProductProductId binary(16) not null,
  orderProductQuantity int unsigned not null,
  orderProductDate datetime(6) not null,
  INDEX (orderProductCustomerId),
  INDEX (orderProductProductId),
  PRIMARY KEY (orderProductCustomerId, orderProductProductId)
);

-- work with george & brent to fix the run function with the sql database (fix  database connection)

INSERT INTO customer(customerId, customerName, customerStreet, customerCity, CustomerZip)
VALUES (UNHEX("18968f052cfe446bba89b2af6fdc4a9f"), "Lucy Sterling", "217 Jeorge St.", "LA", "3901");

INSERT INTO customer(customerId, customerName, customerStreet, customerCity, CustomerZip)
VALUES (UNHEX("38968f052cfe446bba89b2af6fdc4a9f"), "Keith Nelly", "11 Bundy St.", "Albuquerque", "87103");

INSERT INTO customer(customerId, customerName, customerStreet, customerCity, CustomerZip)
VALUES (UNHEX("28968f052cfe446bba89b2af6fdc4a9f"), "Jason Brody", "217 Jeorge St.", "Wales", "8901");


UPDATE customer SET customerName = "Natalie" WHERE customerId = UNHEX("18968f052cfe446bba89b2af6fdc4a9f");


DELETE FROM customer WHERE customerId = unhex("38968f052cfe446bba89b2af6fdc4a9f")


INSERT INTO order(orderId, orderCustomerId, orderProductId, orderDateTime)VALUES
(UNHEX("42516cfb9fdf40ae9c722c5f09daa6c0"),
UNHEX("38968f052cfe446bba89b2af6fdc4a9f" ,
UNHEX(32516cfb9fdf40ae9c722c5f09daa6c0 ,
      '2011-11-11 11:11:11.111111');


SELECT customer where customerId = UNHEX("18968f052cfe446bba89b2af6fdc4a9f");


SELECT
order.orderId ,order.orderCustomerId, customer.customerName, order.orderProductId, Order.OrderDateTime FROM order INNER JOIN customer on
order.orderCustomerId = customer.customerId WHERE orderCustomerId = unhex("18968f052cfe446bba89b2af6fdc4a9f");


SELECT COUNT(*) FROM "like" WHERE tweetId =
UNHEX("18968f052cfe446bba89b2af6fdc4a9f");











