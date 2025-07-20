<?php include 'DBcon/DBConnect.php'
  ?>
<!DOCTYPE htm>
<html lang="vi" type ="text/css">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel = "stylesheet" href="CSS/cart.css"/>
	<link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
    rel="stylesheet"
/>
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
		<form action="order.php" method="post"  class="content">
			<div class="cart_title">
				<p id="cart_title_sp">Sản phẩm</p>
				<p >Đơn giá </p>
				<p >Số lượng</p>
				<p >Số tiền</p>
				<p >Thao tác</p>
			</div>
			<?php
				include("DBcon/DBConnect.php");
				$pd_total_cart=0;
				$user_id = $_SESSION['user_id'];
				$sql_cart =$connect->prepare("SELECT * FROM cart where user_id =?") ;
				$sql_cart ->bind_param("i",$user_id);
				$sql_cart -> execute();
				$result_cart = $sql_cart -> get_result();
				if( $result_cart->num_rows>0){
					while($row_cart = $result_cart->fetch_assoc()){
						$pdcart_id = htmlspecialchars($row_cart['product_id']);
						$pdcart_count = htmlspecialchars($row_cart['quantity']);
						$pdcart_price = htmlspecialchars($row_cart['price_at_time']);
						$sql_cart_pd =$connect->prepare("SELECT * FROM sanpham where id_sp =?") ;
						$sql_cart_pd ->bind_param("i", $pdcart_id);
						$sql_cart_pd -> execute();
						$result_cart_pd = $sql_cart_pd-> get_result();      
						if( $result_cart_pd -> num_rows > 0){
							while($row_pd = $result_cart_pd -> fetch_assoc()){
								$pd_total = $pdcart_price*$pdcart_count;
								$pd_total_cart +=$pd_total;
								$pic_path = htmlspecialchars($row_pd["pic_path"]);
								$pd_name = htmlspecialchars($row_pd["tensp"]); 
								echo    "<div class=\"cart_content\">";
								echo		"<div class=\"cart_sp\">";
								echo			"<a href=\"2nd.php?pd_id=".$row_pd["id_sp"]."\" class=\"cart_pic\">";
								echo				"<img id = \"cart_pic\" src =\"$pic_path\" alt=\"Nhóm 13\" height=\"50px\" width=\"50px\" >	";
								echo				"<p>$pd_name</p>";
								echo			"</a>";
								echo			"<p>$pdcart_price</p>";
								echo			"<input type=\"number\" value=\"$pdcart_count\" width=\"10px\" readonly >";
								echo			"<p>$pd_total</p>";
								echo			"<a id=\"delete_cart\" href=\"delete_cart_item.php?pdcart_id=$pdcart_id\">Xóa</a>";
								echo		"</div>";								
								echo	"</div>";
							
							}
						}
					}
				}
				echo	"<div class=\"cart_oder\">";
				echo		"<h3>Tổng tiền: $pd_total_cart</h3>";
				echo		"<a name=\"order\" href=\"order.php?tongtien=$pd_total_cart\">ĐẶT HÀNG</a> ";
				echo	"</div>";
				$connect->close();
			?>
		</form>
	</main>
	<footer>
		<p>Nhóm 13</p>
		<p>Trần Việt Hoàng-21103100321</p>
		<p>Trần Hoàng Anh-21103100102</p>
		<p>Nguyễn Hoàng Anh-21103101524</p>
	</footer>
</body>
</html>
