<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
CREATE TABLE `Order` (
`Order #` <type>,
    `Customer_ID` <type>,
        `Customer_name` <type>,
            `Download Key` <type>,
                PRIMARY KEY (`Order #`),
                KEY `Key` (`Customer_ID`, `Customer_name`, `Download Key`)
                );

                CREATE TABLE `Product` (
                `Product_ID` <type>,
                    `Quanity` <type>,
                        `Product_Type` <type>,
                            KEY `Key` (`Product_ID`, `Quanity`, `Product_Type`)
                            );

                            CREATE TABLE `Customer` (
                            `Customer ID` <type>,
                                `First Name` <type>,
                                    `Last Name` <type>,
                                        `Street` <type>,
                                            `City` <type>,
                                                `Zip` <type>,
                                                    KEY `Key` (`Customer ID`, `First Name`, `Last Name`, `Street`, `City`, `Zip`)
                                                    );

</body>
</html>
