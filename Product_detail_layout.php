<?php include 'DBcon/DBConnect.php';
  ?>
<!DOCTYPE htm>
<html lang="vi" type ="text/css">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel = "stylesheet" href="CSS/2nd.css"/>
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
				<li href="Home_page.php"  class=" item" ><a href="Home_page.php">HOME</a> </li>
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
		<?php include 'product_detail.php'?> 
		<div class="banner"> 
				<a href="Product_type.php?Keyword=Chanel"><img id = "banner_img" src ="product_pic/banner-chanel.webp" alt="Chanel" ></a>
				<a href="Product_type.php?Keyword=Gucci"><img id = "banner_img" src ="product_pic/gucci_banner.webp" alt="Gucci" ></a>
		</div>
	</main>
	<footer>
		<p>Nhóm 13</p>
		<p>Trần Việt Hoàng-21103100321</p>
		<p>Trần Hoàng Anh-21103100102</p>
		<p>Nguyễn Hoàng Anh-21103101524</p>
	</footer>
	
</body>
</html>
