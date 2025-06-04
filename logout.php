<?php
     if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
    if(isset($_SESSION["user_id"])){
        unset($_SESSION["user_id"]);
        unset($_SESSION["user_name"]);
        header("location:Home_page.php");
        exit();
    }
?>