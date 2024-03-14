<?php
session_start();

// Assuming you have a valid database connection established elsewhere

if (isset($_POST['add_to_cart'])) {
    $productId = $_POST['product_id'];
    addToCart($productId);
}

function addToCart($productId) {
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
    }

    // Check if the item is already in the cart
    if (isset($_SESSION['cart'][$productId])) {
        $_SESSION['cart'][$productId]++;
    } else {
        $_SESSION['cart'][$productId] = 1;
    }

    // Replace these with your actual database credentials
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "aus";

    // Create a new database connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // You should sanitize and validate $productId to prevent SQL injection
    $productId = $conn->real_escape_string($productId);

    // Get the user ID (replace this with your actual method of obtaining the user ID)
    $userId = 222;

    // Check if the product exists in the products table
    $sqlCheckProduct = "SELECT * FROM products WHERE id = $productId";
    $resultCheckProduct = $conn->query($sqlCheckProduct);

    if ($resultCheckProduct->num_rows > 0) {
        // The product exists, proceed with adding to the cart
        // ... (rest of your code)

        // You can add/update the product in the cart table here

    } else {
        // The product does not exist, handle this situation (e.g., display an error message)

        // For example:
        echo "Error: Product not found.";
    }

    // Close the database connection
    $conn->close();

    // Redirect back to the product page or wherever you want
    header("Location: index.php");
    exit();
}
?>
