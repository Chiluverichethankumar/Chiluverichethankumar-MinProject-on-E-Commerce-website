<?php
// Syntax to set a cookie
// echo time();

setcookie("category", "food", time() + 86400, "/",$secure = true,
$httponly = true); 
setcookie("category", "Books", time() + 86400, "/"); 
setcookie("category", "Laboratory", time() + 86400, "/"); 

header("Location:index.php");
?>