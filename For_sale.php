
	<?php
		include ('DBcon/DBConnect.php');
		$sql_sp = "select * from sanpham where giagiam IS NOT NULL";
		$result = $connect->query($sql_sp);
		if ($result->num_rows>0) {
			while ($row = $result->fetch_assoc()) {	
					echo"<a href=\"Product_detail_layout.php?pd_id=".$row["id_sp"]."\" class=\"csanpham\">";
						echo	"<img id = \"pic1\" src =\"".$row["pic_path"]."\" alt=\"pic1\" width=\"100%\" height=\"75%\">";
						echo	"<h3 id =\"".$row["hang"]."\">".$row["hang"]."</h3>";
						echo	"<h5 id=\"product_name\">".$row["tensp"]."</h5>";
						echo	"<div class=\"price\">";
						echo		"<h5 id = \"Saleproduct_price\">".$row["giasp"]."</h5>";
						echo		"<h5 id =\"for_sale\">".$row["giagiam"]."</h5>";
						echo	"</div>";
						echo	"<h6 id=\"sale_quatity\">Đã bán: ".$row["soluongban"]."</h6>";
					echo "</a>";
			}
		}
		else {
			die("Kết nối thất bại: ".mysqli_error());
		}
		$connect->close()
	?>

