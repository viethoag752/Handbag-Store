<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href="CSS/order.css"/>
    <title>Đặt Hàng</title>
</head>
<body>
    <header> 	
            <a id="home" href="Home_page.php"><img id = "tbimg" src ="product_pic/nhom13.png" alt="Nhóm 13" ></a>
            <?php include 'log_status.php'; ?>		
            
    </header>
    <?php
        $tongtien=$_GET['tongtien']; 
    ?>
    <h2>Thông tin đặt hàng</h2>
    <form class="order-form" action="#" method="post">
        <p>
            <label for="hoten">Họ tên:</label>
            <input type="text" id="hoten" name="hoten" required>
            <label for="sdt">Số điện thoại:</label>
            <input type="text" id="sdt" name="sdt" required>
        </p>
        <label for="diachi">Địa chỉ:</label>
        <input type="text" id="diachi" name="diachi" required>
        <label for="tongtien">Tổng tiền:</label>
        <input type="number" id="tongtien" name="tongtien" value="<?php echo $tongtien; ?>" readonly>
        <br><br>

        <!-- Nút đặt hàng -->
        <button type="submit">Đặt hàng</button>
    </form>
    <?php
        if (session_status() == PHP_SESSION_NONE) {session_start();}
        include('DBcon/DBConnect.php'); 
        $user_id = $_SESSION['user_id'];
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $hoten = htmlspecialchars($_POST['hoten']);
            $diachi = htmlspecialchars($_POST['diachi']);
            $tongtien = htmlspecialchars($_POST['tongtien']);     
            $sdt = htmlspecialchars($_POST['sdt']); 
            $connect->begin_transaction();

        try {
            $sql_order = $connect->prepare("INSERT INTO donhang (user_id,hoten,sdt,diachi,tongtien) VALUES (?,?, ?, ?, ?)");
            $sql_order->bind_param("iisss", $user_id, $hoten,$sdt, $diachi, $tongtien);
            $sql_order->execute();
            $sql_cart = $connect->prepare("SELECT product_id, quantity FROM cart WHERE user_id = ?");
            $sql_cart->bind_param("i", $user_id);
            $sql_cart->execute();
            $result_cart = $sql_cart->get_result();
            while ($row_cart = $result_cart->fetch_assoc()) {
                $product_id = $row_cart['product_id'];
                $quantity = $row_cart['quantity'];
                $sql_update_product = $connect->prepare("UPDATE sanpham SET soluongban = soluongban + ?,soluong = soluong - ? WHERE id_sp = ? AND soluong >= ?");
                $sql_update_product->bind_param("iiii",$quantity, $quantity, $product_id, $quantity);
                echo "Trước khi cập nhật: sản phẩm ID: $product_id, số lượng: $quantity";
                $sql_update_product->execute();
                if ($sql_update_product->affected_rows == 0) {
                    throw new Exception("Sản phẩm ID $product_id không đủ số lượng để đặt hàng.");
                }             
            }
            $sql_clear_cart = $connect->prepare("DELETE FROM cart WHERE user_id = ?");
            $sql_clear_cart->bind_param("i", $user_id);
            $sql_clear_cart->execute();

            $connect->commit();
            echo "<p style='color: red;'>Đặt hàng thành công!</p>";
        } catch (Exception $e) {
            $connect->rollback();
            echo "<p style='color: red;'>Đặt hàng thất bại!</p>" . $e->getMessage();
        }
        
    } else {
                echo "<p style='color: red;'>Vui lòng điền đầy đủ thông tin!</p>";
            }
        $connect->close();
    ?>
     <footer>
		<p>Nhóm 13</p>
		<p>Trần Việt Hoàng-21103100321</p>
		<p>Trần Hoàng Anh-21103100102</p>
		<p>Nguyễn Hoàng Anh-21103101524</p>
	</footer>
</body>
</html>
