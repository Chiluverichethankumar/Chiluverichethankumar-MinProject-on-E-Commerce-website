<?php
require("includes/common.php");
if (isset($_SESSION['email'])) {
    header('location: products.php');
}

?>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Signup | Gitam Online Shopping SignUp</title>
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

        <div class="container1">
                <div class="user1"></div>
                <form  action="signup_script.php" method="POST">
                <br>
                <br>
                <br>
                <h2>Sign Up </h2>
                

                                <div class="input">
                                    <input class="text"  autofocus="on" name="name"  required = "true" pattern="^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$">
                                    <label for="Name">Name</label>
                                </div>
                                <div class="input">
                                    <input type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"  name="e-mail" required = "true"><?php if(isset($_GET['m1'])) echo $_GET['m1']; ?>
                                    <label for="secondName">Email</label>
                                </div>
                                <div class="input">
                                    <input type="password"   title="Password must be 8 characters including 1 uppercase letter, 1 lowercase letter and numeric characters"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" required = "true">
                                    <label for="password">Password</label>
                                </div>
                                <div class="input">
                                    <input type="text"  maxlength="10" size="10" name="contact" required = "true"><?php if(isset($_GET['m2'])) echo $_GET['m2']; ?>
                                    <label for="Contact">Contact</label>
                                </div>
                                <div class="input">
                                    <input  type="text"  name="city" required = "true">
                                    <label for="City">City</label>
                                </div>
                                <div class="input">
                                    <input  type="text"  name="address" required = "true">
                                    <label for="Address">Address</label>
                                </div>
                                <input type="submit" name="submit" class="button button2"/>
                               <pre> </pre>
                                <hr>
                              
                <div class="signup">Access you are Accunt! <a href="login.php">Login</a></div>
                </form method="get">
           
            
        </div>
      
    </body>
  
</html>