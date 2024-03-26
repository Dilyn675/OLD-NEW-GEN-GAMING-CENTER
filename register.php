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
        <input type="text" id="name" name="customerName" required><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="customerEmail" required><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>