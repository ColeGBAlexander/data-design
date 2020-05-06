CREATE TABLE `Product` (
  `productId` <type>,
  `orderProductId` <type>,
  `productPrice` <type>,
  PRIMARY KEY (`productId`)
);

CREATE TABLE `Order Product Table` (
  `orderProductCustomerId` <type>,
  `orderProductProductId` <type>,
  `orderProductQuantity` <type>,
  `orderProductDate` <type>,
  KEY `FK` (`orderProductCustomerId`, `orderProductProductId`)
);

CREATE TABLE `Order` (
  `orderId` <type>,
  `orderCustomerId` <type>,
  `orderDateTime` <type>,
  PRIMARY KEY (`orderId`),
  KEY `FK` (`orderCustomerId`)
);

CREATE TABLE `Customer` (
  `customerrId (Primary Key` <type>,
  `customerName` <type>,
  `customerStreet` <type>,
  `customerCity` <type>,
  `customerZip` <type>,
  PRIMARY KEY (`customerrId (Primary Key`)
);

