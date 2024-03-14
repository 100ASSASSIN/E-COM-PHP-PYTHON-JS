<?php
session_start();
require 'connection.php';
if (!isset($_SESSION['email'])) {
    header('location: login.php');
}
$user_id = $_SESSION['id'];
$user_products_query = "SELECT it.id, it.name, it.price FROM users_items ut 
                        INNER JOIN items it ON it.id = ut.item_id 
                        WHERE ut.user_id = ?";
                        
$stmt = $con->prepare($user_products_query);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$user_products_result = $stmt->get_result();
$no_of_user_products = $user_products_result->num_rows;
$sum = 0;
if ($no_of_user_products == 0) {
    ?>
    <script>
        window.alert("No items in the cart!!");
    </script>
    <?php
} else {
    while ($row = $user_products_result->fetch_assoc()) {
        $sum += $row['price'];
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>AUS</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
    <!-- jQuery library -->
    <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <!-- External CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    <div>
        <?php
        require 'nav-bar.php';
        ?>
        <br>
        <div id="alg">
        <div class="container">
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>Item Number</th>
                        <th>Item Name</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                    <?php
                    $stmt->execute();
                    $user_products_result = $stmt->get_result();
                    $counter = 1;
                    while ($row = $user_products_result->fetch_assoc()) {
                    ?>
                        <tr>
                            <th><?php echo $counter ?></th>
                            <th><?php echo $row['name'] ?></th>
                            <th><?php echo $row['price'] ?></th>
                            <th><a href='cart_remove.php?id=<?php echo $row['id'] ?>'>Remove</a></th>
                        </tr>
                    <?php
                        $counter++;
                    } ?>
                    <tr>
                        <th></th>
                        <th>Total</th>
                        <th>Rs <?php echo $sum; ?>/-</th>
                        <th><a href="success.php?id=<?php echo $user_id ?>" class="btn btn-primary">Confirm Order</a></th>
                    </tr>
                </tbody>
        </table>
        </div>
        </div>
        <br><br><br><br><br><br><br><br><br><br>
    </div>
</body>
</html>
