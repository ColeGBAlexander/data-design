<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Conceptual Model</title>
</head>
<h1>Entities & Attributes:</h1>
<body>
<h3>ORDER:</h3>
<ul>
    <Li>orderId (Primary Key)</Li>
    <li>orderCustomerId (forign key)</li>
    <li>orderDateTime</li>
</ul>
<h3>CUSTOMER:</h3>
<ul>
    <li>customerId (Primary Key)</li>
    <li>customerName (key)</li>
    <li>lastName (key)</li>
    <li>customerStreet (key)</li>
    <li>customerCity (key)</li>
    <li>customerZip (key)</li>
</ul>
<h3>ORDER PRODUCT TABLE:</h3>
<ul>
    <li>cost (Forign Key)</li>
    <li>quantity (Forign Key)</li>
    <li>date (Key)</li>
</ul>
<h3>PRODUCT:</h3>
<ul>
    <li>productId (Primary key)</li>
    <li>productType</li>
    <li>price</li>
</ul>

</body>
</html>