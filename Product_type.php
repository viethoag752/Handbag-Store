<?php include 'DBcon/DBConnect.php' ?>
<!DOCTYPE htm>
<html lang="vi" type ="text/css">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel = "stylesheet" href="CSS/Product_type.css"/>
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
			<div class="sanpham_pl">
			<?php
				$keyword = isset($_GET["Keyword"]) ? $_GET["Keyword"] :"";
				$sql_pl = "SELECT * from sanpham where hang like '%$keyword%' or tensp like '%$keyword%'";
				$result = $connect->query($sql_pl);
					if ($result->num_rows>0) {
						echo"<div class=\"hang_pl\">".$keyword."</div>";    
						while ($row = $result->fetch_assoc()) {      
							echo"<a href=\"Product_detail_layout.php?pd_id=".$row["id_sp"]."\" class=\"csanpham\">";
								echo	"<img id = \"pic1\" src =\"".$row["pic_path"]."\" alt=\"pic1\" width=\"100%\" height=\"75%\">";
								echo	"<h3 id =\"".$row["hang"]."\">".$row["hang"]."</h3>";
								echo	"<h5 id=\"product_name\">".$row["tensp"]."</h5>";
								echo	"<div class=\"price\">";
								echo		"<h5 id = \"Product_price\">".$row["giasp"]."</h5>";
								echo		"<h5 id =\"for_sale\">".$row["giagiam"]."</h5>";
								echo	"</div>";
								echo	"<h6 id=\"sale_quatity\">Đã bán: ".$row["soluongban"]."</h6>";
							echo "</a>";
						}
					}
					else {echo"KHÔNG CÓ SẢN PHẨM NÀO";}
					$connect->close()
			?>										 	 
			</div>
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
