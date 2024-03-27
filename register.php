<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Jaquie Jewelry</title>
</head>
<body>
    <h1>Register</h1>
    <p>Please fill in the form below to register:</p>
    <form action="insert.php" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="Name" required><br><br>
        <label for="UserPassword">UserPassword:</label>
        <input type="text" id="userPassword" name="UserPassword" required><br><br>
        <label for="Address">Address:</label>
        <input type="text" id="address" name="Address" required><br><br>
        <label for="PhoneNumber">PhoneNumber:</label>
        <input type="text" id="phoneNumber" name="PhoneNumber" required><br><br>
        <label for="ShippingAddress">ShippingAddress:</label>
        <input type="text" id="shippingAddress" name="ShippingAddress" required><br><br>
        <label for="CreditCardNumber">CreditCardNumber:</label>
        <input type="text" id="creditCardNumber" name="CreditCardNumber" required><br><br>
        <label for="CreditCardExpirationDate">CreditCardExpirationDate:</label>
        <input type="date" id="creditCardExpirationDate" name="CreditCardExpirationDate" required><br><br>
        <br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
