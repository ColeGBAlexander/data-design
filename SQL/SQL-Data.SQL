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

-- Check with George to see if the logic is correct

