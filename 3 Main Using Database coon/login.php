<?php
require("includes/common.php");
// Redirects the user to products page if logged in.
if (isset($_SESSION['email'])) {
    header('location: products.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gitam Online Shopping Log In</title>
    <link rel="stylesheet" href="css/style1.css" />
    <style>
    .button {
        border: none;
        color: rgb(227, 226, 226);
        padding: 10px 15px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }
    
    .button2 {background-color: #000000;} /* Blue */
    </style>
</head>
<body class="flex">
        <div class="container">
            <div class="user"></div>
                <br>
                <br>
                <br>
                    <form action="login_submit.php" method="POST">
                        <h1>Log In </h1>
                                <div class="input">
                                    <input type="email"   autofocus="on" name="e-mail" required = "true">
                                    <label for="email">Email</label>
                                </div>
                                <div class="input box">
                                    <input type="password" name="password" required = "true">
                                    <label for="password">Password</label>
                                </div>
                                    
                                <input type="submit" class="button button2"  value="Login" name="submit">
                                    <?php if(isset($_GET['error'])) echo $_GET['error']; ?>
                    </form method="get">
                            <div class="div">
                                <div class="line"></div>
                                <div class="signup">Don't Have an account? <a href="signup.php">Sign Up</a></div>
                            </div>
            </div>
        </div>
        
    </body>
</html>