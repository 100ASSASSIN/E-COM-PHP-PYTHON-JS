<?php
require 'db.php'; // Include the database connection file

// Fetch images from the database
$sql = "SELECT image_path FROM images";
$result = $conn->query($sql);

// Check if there are any rows in the result
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $imagePath = $row["image_path"];
        echo "<img src='$imagePath' alt='Image' style='width: 200px; height: 200px; margin: 10px;'>";
    }
} else {
    echo "No images found";
}

// Close connection
$conn->close();
?>
