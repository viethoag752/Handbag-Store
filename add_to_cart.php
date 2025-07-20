<?php
     if (session_status() == PHP_SESSION_NONE) {session_start();}
    include("DBcon\DBConnect.php");
    if($_SERVER['REQUEST_METHOD']=='POST'){
        $user_id = $_SESSION['user_id'];
        $product_id = $_POST['product_id'];
        $quantity = $_POST['quantity'];
        $sql_cart = "SELECT * FROM sanpham WHERE id_sp=$product_id";
        $result_cart = $connect->query($sql_cart);
        if ($result_cart->num_rows>0) {
            $row_cart = $result_cart->fetch_assoc();
            if($row_cart['giagiam']!=null){
                $price_at_time = $row_cart['giagiam'];
            }else{$price_at_time = $row_cart['giasp'];}  
            $sql_check = "SELECT * FROM cart where user_id =$user_id and product_id =$product_id";
            $result_check = $connect->query($sql_check);
            if ($result_check->num_rows>0) {
                $sql_update_cart ="UPDATE cart set quantity=quantity+$quantity where user_id =$user_id and product_id = $product_id";
                $connect->query($sql_update_cart);
            }else{
                $sql_insert_cart = "INSERT INTO cart(user_id, product_id, quantity, price_at_time) VALUES ($user_id, $product_id, $quantity, $price_at_time)";
                $connect->query($sql_insert_cart);
            }
            $message = "Thêm thành công!";
            
        }else {
            $message = "Thêm thất bại!";
            
        }
        $result_cart->close();
        $connect->close();
       
    }
    
?>
<?php
 if (session_status() == PHP_SESSION_NONE) {session_start();}
$_SESSION['message'] = $message;
header("Location:".$_SERVER['HTTP_REFERER']);
exit;
?>