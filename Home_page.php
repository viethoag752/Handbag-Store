<?php include 'DBcon/DBConnect.php';

  ?>
<!DOCTYPE htm>
<html lang="vi" type ="text/css">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel = "stylesheet" href="CSS/1st.css"/>
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
		<div class="content">
			<div class="banner"> 
				<a href="Product_type.php?Keyword=Chanel"><img id = "banner_img" src ="product_pic/banner-chanel.webp" alt="Chanel" ></a>
				<a href="Product_type.php?Keyword=Gucci"><img id = "banner_img" src ="product_pic/gucci_banner.webp" alt="Gucci" ></a>
			</div>
			<div class="sanpham_giamgia">
				<div class="title">Hàng giảm giá</div>		
				<?php include 'For_sale.php' ?>			
							 	 
			</div>
			<div class="sanpham_banchay">
				<div class="title">Hàng bán chạy</div>
				<?php include 'Best_selling.php' ?>
			</div>
			<a  id="next_page"><i class="ri-arrow-right-s-line"></i></a>
		</div>
	</main>
	<div id = "sidebar">
		<div class="sidebar_content">
			<div class ="Search">
				<h2>Tìm kiếm</h2>
				<form action="Product_type.php" method="get">
					<div class="searchbar_content">
						<input id="Search_bar" type="search" name="Keyword" placeholder=" Tìm kiếm" required >
						<button id="Search_button" type="submit"><i class="ri-search-line"></i></button>
					</div>
				</form>
			</div>	
	
		</div>
	</div>
	<footer>
		<p>Nhóm 13</p>
		<p>Trần Việt Hoàng-21103100321</p>
		<p>Trần Hoàng Anh-21103100102</p>
		<p>Nguyễn Hoàng Anh-21103101524</p>
	</footer>
	
</body>
</html>
