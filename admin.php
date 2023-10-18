<?php
$servername = "localhost";
$username = "username"; // MySQL username
$password = "password"; // MySQL password
$dbname = "ecommerce";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Customer information
$customer_name = "John Doe";
$email = "johndoe@example.com";
$phone_number = "123-456-7890";
$address = "123 Main Street";
$state = "California";

// SQL query to insert customer information
$sql = "INSERT INTO customers (customer_name, email, phone_number, address, state)
        VALUES ('$customer_name', '$email', '$phone_number', '$address', '$state')";

if ($conn->query($sql) === TRUE) {
    echo "Customer information inserted successfully!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
