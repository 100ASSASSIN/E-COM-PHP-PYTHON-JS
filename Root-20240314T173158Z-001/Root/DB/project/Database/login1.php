<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="login.css" />
    <link
      rel="stylesheet"
      href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"
    />
    <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>
  </head>
  <body>
    <!--registration form-->
    <div class="container">
      <a href="cake2.html" class="Back"> <i class="bx bx-arrow-back"></i></a>
      <div class="form-box">
        <a href="login.html" class="icon-close"
          ><ion-icon name="close-outline"></ion-icon
        ></a>
        <form action="login.php" method="GET">
          <h2>Login In</h2>
          <p id="result"></p>

          <div class="input-box">
            <i class="bx bxs-envelope"></i>
            <input type="email" name="eml" placeholder="Email" />
          </div>
          <div class="input-box">
            <i class="bx bxs-lock-alt"></i>
            <input type="password" name="pswd" placeholder="Password" />
          </div>

          <div class="button">
            <input type="submit" class="btn" value="Login" />
          </div>
        </form>
      </div>
    </div>
    <script src="index.js"></script>
  </body>
</html>
