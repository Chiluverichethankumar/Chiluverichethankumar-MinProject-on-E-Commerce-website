<?php

//establish the connection to database, and start the session
require("includes/common.php");

// Redirects the user to products page if he/she is logged in.
if (isset($_SESSION['email'])) {
  header('location: products.php');
}

?>

<!--Specifies document type is html-->
<!DOCTYPE html>
<!--Specifies the language as English-->
<html lang="en">
    <head>
        <!--instructs browser on how to control the page's dimensions and scaling-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Title of index page-->
        <title>Welcome | Gitam Online Shopping</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
     


    </head>
    <body style="padding-top: 50px;">
        <!-- Header -->
        <?php
        include 'includes/header.php';
        ?>
        <!--Header end-->

        <div id="content">
            <!--Main banner image-->
       
            <div class = "banner_bg_main">
                <div class="container"> 
                    <center>
                        <br>
                    <img height="200" width="200"  src="img/logo1.png" alt="">
                
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <p><h3>Flat 40% OFF on premium Gitam brands </h3></p>
                        <br>
                            <a  href="products.php" class="btn btn-danger btn-lg active">Shop Now</a>
                    <br>
                    <br>
                    
                    </center>
                </div>
            </div>
            <!--Main banner image end-->
            
            <!--Item categories listing-->
            <div class="container">
            
                <div class="row text-center" id="item_list">
                    <div class="col-sm-4">
                        <a href="products.php#cameras" >
                            <div class="thumbnail">
                                <img src="img/Books1.jpg" alt="">
                                <div class="caption">
                                    <h3>Books Section</h3>
                                    <p>Reading opens doors!</p>
                                </div>
                            </div> 
                        </a>
                    </div>

                    <div class="col-sm-4">
                        <a href="products.php#watches" >
                            <div class="thumbnail">
                                <img   src="img/Labb.jpg" alt="">
                                <div class="caption">
                                    <h3>Laboratory Section</h3>
                                    <p>Lab-tested, fun approved.</p>
                                </div>
                            </div> 
                        </a>
                    </div>

                    <div class="col-sm-4">
                        <a href="products.php#shirts" >
                            <div class="thumbnail">
                                <img src="img/food_Sports.jpg" alt="">
                                <div class="caption">
                                    <h3>Sports Section</h3>
                                    <p>Win every game, be an achiever in Sports.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            
            <!--Item categories listing end-->
        </div>
        
        <!--Footer-->
        <?php
        include 'includes/footer.php';
        ?>
        <!--Footer end-->
   
    </body> 
</html>