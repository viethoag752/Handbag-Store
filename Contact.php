<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Liên Hệ</title>
    <link rel="stylesheet" href="CSS/contact_layout.css">
    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
    rel="stylesheet"
</head>
<body>
<header> 	
		<a id="home" href="Home_page.php"><img id = "tbimg" src ="product_pic/nhom13.png" alt="Nhóm 13" ></a>
		<?php include 'log_status.php'; ?>		
		
	</header>
	<nav>
		<div class="nav_container">
			<ul class="menu_link">
				<li href="#"  class=" item" ><a href="Home_page.php">HOME</a> </li>
				<li href="#"  class="item" id = "thuonghieu_item">BRAND
					<i class="ri-arrow-down-s-line"></i>
					<ul class="thuonghieu_list" id = "thuonghieu__list">
						<li>
							<a href="Product_type.php?Keyword=Chanel" class="thuonghieu_link">Chanel</a>
						</li>
						<li>
							<a href="Product_type.php?Keyword=Prada" class="thuonghieu_link">Prada</a>
						</li>
						<li>
							<a href="Product_type.php?Keyword=Louis Vuitt" class="thuonghieu_link">Louis Vuitt</a>
						</li>
						<li>
							<a href="Product_type.php?Keyword=Gucci" class="thuonghieu_link">Gucci</a>
						</li>
					</ul>
										
				</li>
				<li class="item"><a href="user_contact.php"  id = "lienhe_item">CONTACT</a></li>
				<li class="item" id = "cart_item"> <a class="ri-shopping-cart-line" href="user_cart.php"></a></li>
			</ul>				
		</div>
	</nav>
	<main>
        <div class="form-container">
            <h2>Liên hệ với chúng tôi</h2>
            <form action="#" method="POST" class="contact-form">
                <p>Vui lòng chọn lý do liên hệ:</p>
                <div class="checkbox-group">
                    <input type="checkbox" id="update_account" name="reasons[]" value="Sửa thông tin tài khoản">
                    <label for="update_account">Sửa thông tin tài khoản</label>
                </div>
                <div class="checkbox-group">
                    <input type="checkbox" id="service_complaint" name="reasons[]" value="Phàn nàn dịch vụ">
                    <label for="service_complaint">Phàn nàn dịch vụ</label>
                </div>
                <div class="checkbox-group">
                    <input type="checkbox" id="contact_admin" name="reasons[]" value="Liên lạc với quản trị">
                    <label for="contact_admin">Liên lạc với quản trị</label>
                </div>
                <label for="message">Nội dung tin nhắn:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
                <button type="submit">Gửi</button>
            </form>
        </div>
	</main>
	<footer>
		<p>Nhóm 13</p>
		<p>Trần Việt Hoàng-21103100321</p>
		<p>Trần Hoàng Anh-21103100102</p>
		<p>Nguyễn Hoàng Anh-21103101524</p>
	</footer>

<?php
    include("DBcon/DBConnect.php");
    if (session_status() == PHP_SESSION_NONE) { session_start();}
    if($_SERVER['REQUEST_METHOD']=='POST'){
        $reasons = isset($_POST['reasons']) ? $_POST['reasons'] :[];
        $message = trim($_POST['message']);
        $user_id = $_SESSION['user_id'];
        $reasons_str = implode(', ', $reasons);
        $sql_contact = $connect->prepare("INSERT INTO lienhe (user_id,reasons,messagee,created_at) VALUES (?,?,?,NOW())") ;
        $sql_contact ->bind_param("iss", $user_id, $reason, $message) ;
        $sql_contact->execute() ;
        $alert = "Gửi thành công!";
        echo "<script type='text/javascript'>alert('$alert');</script>";
    }
    $connect->close();
    
?>
</body>
</html>
