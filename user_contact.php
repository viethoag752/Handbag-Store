<?php
   if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

    if (isset($_SESSION["user_id"])) {  
        $user_id = $_SESSION["user_id"];
        $user_name = $_SESSION["username"];
        header("location:Contact.php");

    }else 
    {
       header("location:login.php");
       exit();
    }

?>