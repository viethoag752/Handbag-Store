<?php
  if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include("DBcon/DBConnect.php");
    if(isset($_GET["pdcart_id"])){
        $pdcart_id = $_GET['pdcart_id'];
        $user_id = $_SESSION['user_id'];
        $sql_delete = $connect->prepare("DELETE FROM cart WHERE user_id =? AND product_id =?");
        $sql_delete->bind_param("ii", $user_id,$pdcart_id );
        $sql_delete->execute();
        header("location:Cart.php");
        $connect->close();
        
        
    }
?>