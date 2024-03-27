<?php
// Replace the values below with your database connection details
$servername = "localhost";
$username = "Dilyn Howard";
$password = "101dlh1420PMA";
$dbname = "oldnewgengamingcenter";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$strName = $_POST["Name"];
$strUserPassword = $_POST["UserPassword"];
$strAddress = $_POST["Address"];
$strPhoneNumber = $_POST["PhoneNumber"];
$strShippingAddress = $_POST["ShippingAddress"];
$strCreditCardNumber = $_POST["CreditCardNumber"];
$strCreditCardExpirationDate = $_POST["CreditCardExpirationDate"];

$sqlStatement = "INSERT INTO users (Name, UserPassword, Address, PhoneNumber, ShippingAddress, CreditCardNumber, CreditCardExpirationDate) VALUES ('$strName', '$strUserPassword', '$strAddress', '$strPhoneNumber', '$strShippingAddress', '$strCreditCardNumber', '$strCreditCardExpirationDate')";

if ($conn->query($sqlStatement) === TRUE) {
    echo "<p>Record added successfully.</p>";
} else {
    echo "Error: " . $sqlStatement . "<br>" . $conn->error;
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success | Welcome to the Game Center</title>
</head>
<body>
    <form action="Webpage.html" method="POST">
        <input type="submit" value="Back to Home">
    </form>
</body>
</html>