
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/Root/Components/navbar/navbar-plugin.css">
    <link rel="stylesheet" href="/Root/Assets/icons/font-awesome-4.7.0/css/font-awesome.min.css">
    <title>Your Page Title</title>
</head>
<body>
    <div id="top-row">
        <ul class="nav-links">
            <?php
            if (isset($_SESSION['email'])) {
            ?>
                <li><a href="/Root/index.php"><i class="fa fa-rebel" aria-hidden="true"></i> ASSASSIN</a></li>
                <li class="center"><a href="index.php">HOME</a></li>
                <li class="center"><a href="#">PRODUCT<span></span></a></li>
                <li class="upward"><a href="#">Services<span></span></a></li>
                <li><a href="/Root/public/logout.php"><span></span><i class="fa fa-sign-out" aria-hidden="true"></i>log out</a></li>
                <li class="forward"><a href="\Root\public/cart.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i> CART<span></span></a></li>
            <?php
            } else {
            ?>
            <li><a href="/Root/index.php"><i class="fa fa-rebel" aria-hidden="true"></i> ASSASSIN</a></li>
                <li class="center"><a href="index.php">HOME</a></li>
                <li class="center"><a href="#">PRODUCT<span></span></a></li>
                <li class="upward"><a href="#">Services<span></span></a></li>
                <li><a href="/Root/public/signup.php"><span></span><i class="fa fa-user-plus" aria-hidden="true"></i> Sign Up</a></li>
                <li><a href="/Root/public/login.php"><span></span> <i class="fa fa-user-plus" aria-hidden="true"></i> Login</a></li>
            <?php
            }
            ?>
        </ul>
    </div>
</body>
</html>
