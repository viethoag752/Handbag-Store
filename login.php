<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel = "stylesheet" href="CSS/login.css"/>
</head>
<body>
    <header> 	
		<a id="home" href="Home_page.php"><img id = "tbimg" src ="product_pic/nhom13.png" alt="Nhóm 13" ></a>
		<?php include 'log_status.php'; ?>		
		
	</header>
    <div class="login-form">
        <h2>Đăng nhập</h2>
        <form action="#" method="post">
            <label for="email">Email của bạn</label>
            <input type="email" id="email" name="email" placeholder="Email của bạn" required>

            <label for="password">Mật khẩu</label>
            <input type="password" id="password" name="password" placeholder="Mật khẩu" required>

            <button type="submit">Đăng nhập</button>
        </form>
        <div class="signup-link">
            Chưa có tài khoản? <a href="register.php">Đăng ký ngay</a>    
        </div>
        <?php

        if($_SERVER['REQUEST_METHOD']=='POST'){
            include("DBcon\DBConnect.php");
            if (session_status() == PHP_SESSION_NONE) {session_start();}
            $message="";
            $email = $_POST['email'];
            $password = $_POST['password'];
            $sql = "SELECT * FROM users WHERE email = ?";
            $stmt = $connect->prepare($sql);
            $stmt->bind_param('s', $email);
            $stmt->execute();
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                $user = $result->fetch_assoc();
                if ($password== $user['password']) {
                    $_SESSION['user_id'] = $user['id'];
                    $_SESSION['username'] = $user['username'];
                    $loggin_success = true;                    
                    header("location:Home_page.php");
                    exit();
                    
                } else {
                    $loggin_success = false;
                    echo "<p style='color: red;'>Sai mật khẩu</p>";
                }
            } else {              
                echo "<p style='color: red;'>Email không tồn tại</p>";
            } 
            $stmt->close();
            $connect->close();
        }
    ?>
    </div>
    <footer>
		<p>Nhóm 13</p>
		<p>Trần Việt Hoàng-21103100321</p>
		<p>Trần Hoàng Anh-21103100102</p>
		<p>Nguyễn Hoàng Anh-21103101524</p>
	</footer>
</body>
</html>
