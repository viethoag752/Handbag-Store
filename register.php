<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link rel = "stylesheet" href="CSS/register.css"/>
</head>
<body>
    <header> 	
		<a id="home" href="Home_page.php"><img id = "tbimg" src ="product_pic/nhom13.png" alt="Nhóm 13" ></a>
		<?php include 'log_status.php'; ?>		
		
	</header>
    <div class="register-container">
        <h2>Đăng ký</h2>
        <form action="#" method="POST">
            <div class="form-group">
                <label for="fullname">Tên đầy đủ</label>
                <input type="text" id="fullname" name="fullname" required>
            </div>
            <div class="form-group">
                <label for="username">Tên đăng nhập</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="address">Địa chỉ</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Nhập lại mật khẩu</label>
                <input type="password" id="confirm_password" name="confirm_password" required>
            </div>
            <div class="form-group">
                <button type="submit">Đăng ký</button>
            </div>
        </form>
        <div class="footer">
            Đã có tài khoản? <a href="login.php">Đăng nhập</a>
        </div>
    <!-- </div> -->
    <?php
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            include ("DBcon\DBConnect.php");
            $fullname = $_POST['fullname'];
            $username = $_POST['username'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];
            $address = $_POST['address'];
            $password = $_POST['password'];
            $confirm_password = $_POST['confirm_password'];
            $errors = [];
        // Sử dụng Prepared Statements
            $sql_check_username = $connect->prepare("SELECT id FROM users WHERE username = ?");
            $sql_check_username->bind_param("s", $username);
            $sql_check_username->execute();
            $result_check_username = $sql_check_username->get_result();
            if ($result_check_username->num_rows > 0) {
                $errors[] = "Username đã tồn tại";
            }
            $sql_check_email = $connect->prepare("SELECT id FROM users WHERE email = ?");
            $sql_check_email->bind_param("s", $email);
            $sql_check_email->execute();
            $result_check_email = $sql_check_email->get_result();

            if ($result_check_email->num_rows > 0) {$errors[] = "Email đã tồn tại";}

            if (strlen($fullname) < 3) { $errors[] = "Tên tài khoản phải có ít nhất 3 ký tự.";}
            if (strlen($username) < 5) { $errors[] = "Tên đăng nhập phải có ít nhất 5 ký tự.";}
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) { $errors[] = "Email không hợp lệ.";}
            if (!preg_match("/^[0-9]{10,11}$/", $phone)) { $errors[] = "Số điện thoại không hợp lệ. Phải có 10-11 chữ số.";}
            
            if (strlen($password) < 6) {$errors[] = "Mật khẩu phải có ít nhất 6 ký tự."; }
            if ($password !== $confirm_password) { $errors[] = "Mật khẩu và nhập lại mật khẩu không khớp.";}
            if (empty($errors)) {
                $sql = "INSERT INTO users (fullname, username, email, phone, address, password) 
                        VALUES ('$fullname', '$username', '$email', '$phone', '$address', '$password')"; 
                if ($connect->query($sql) === TRUE) {            
                    echo "<p style='color: red;'>Đăng ký thành công</p>";                  
                } else {
                    echo "<p style='color: red;'>Đăng ký thất bại</p>";              
                }

                $connect->close();
            } else {
                foreach ($errors as $error) {
                    echo "<p style='color: red;'>$error</p>";
                }
                
            }
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


