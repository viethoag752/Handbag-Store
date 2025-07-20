
<?php
     if (session_status() == PHP_SESSION_NONE) {
        session_start();}
    $pd_id = $_GET["pd_id"] ;
    $sql_sp = $connect->prepare( "SELECT * FROM sanpham INNER JOIN mota ON sanpham.id_sp = mota.id_sp
                                         INNER JOIN chitiet ON sanpham.id_sp =chitiet.id_sp   
                                            where sanpham.id_sp = ? ");
        $sql_sp ->bind_param('i', $pd_id);
        $sql_sp -> execute();
        $result = $sql_sp->get_result();
        if ($result->num_rows>0) {
			while ($row = $result->fetch_assoc()) {
                $pic_path = htmlspecialchars($row['pic_path']);
                $tensp = htmlspecialchars($row['tensp']);
                $giasp = htmlspecialchars($row['giasp']);
                $giagiam = htmlspecialchars($row['giagiam']);
                $soluong = htmlspecialchars($row['soluong']);
                $soluongban = htmlspecialchars($row['soluongban']);
                $detail = htmlspecialchars($row['detail']);    
                $mota1 = htmlspecialchars($row['detail1']) ;      
                $mota2 = htmlspecialchars($row['detail2']) ;   
                $mota3 = htmlspecialchars($row['detail3']) ;  
                $pic1 = htmlspecialchars($row['pic1']);
                $pic2 = htmlspecialchars($row['pic2']);
                $pic3 = htmlspecialchars($row['pic3']);       
                $hang = htmlspecialchars($row['thuonghieu']) ;  
                $xuatxu = htmlspecialchars($row['xuatxu']);
                $mausac = htmlspecialchars($row['mausac']);
                $kichthuoc = htmlspecialchars($row['kichthuoc']); 
                echo "<div class=\"pic\"><img id = \"tbimg\" src =\"$pic_path\" alt=\"Nhóm 13\" >	</div>";
                echo" <form class=\"sp\" action =\"add_to_cart.php\" method =\"POST\">";
                echo"       <div class=\"name\" id =\"prd_view\">$tensp</div>";
                echo"           <input type=\"hidden\" name=\"product_id\" value=\"".$row['id_sp']."\">";
                echo"           <div class=\"product_price\" id =\"prd_view\">";
                if($giagiam!=null){
                echo"           <p id=\"sale\">$giasp ₫</p>";
                echo"           <p>$giagiam đ</p>";
                }else{echo"     <p>$giasp đ</p>";}    
                echo"        </div>";
                echo"        <div class=\"count\" id =\"prd_view\">";
                echo"           <p id =\"quantity\"> Sản phẩm có sẵn: $soluong</p>";
                echo"           <p>Số lượng:  <input type=\"number\" name=\"quantity\" value=\"1\" min=\"1\" max=\"$soluong\" size=\"40\"></p>";      
                echo"        </div>";
                echo"        <p>Đã bán: $soluongban</p>";
                echo"        <div class=\"place_order\" id =\"prd_view\">";
                if(isset($_SESSION["user_id"])) {
                echo"           <button id=\"add\" type=\"submit\" name=\"cart_add\"><h2>Thêm vào giỏ<i class=\"ri-add-circle-line\"></i></h2></button>";} 
                else{
                echo "           <a id=\"add\" href=\"login.php\"><h2>Thêm vào giỏ<i class=\"ri-add-circle-line\"></i></h2></a>";
                }
                echo"        </div>";
                echo" </form>";
                echo  "<div class=\"detail\">";
                echo       "<h3 class=\"detail_banner\">Mô tả sản phẩm</h3>";
                echo        $detail;
                echo        "$mota1";
                echo        "<div class=\"detail_pic\"><img id = \"tbimg\" src =\"$pic1\" alt=\"pic1\" ></div>";
                echo        "$mota2";
                echo        "<div class=\"detail_pic\"><img id = \"tbimg\" src =\"$pic2\" alt=\"pic2\" ></div>";
                echo        "$mota3";
                echo        "<div class=\"detail_pic\"><img id = \"tbimg\" src =\"$pic3\" alt=\"pic3\" ></div>";
                echo        "<hr>";
                echo        "<strong>Chi tiết sản phẩm</strong>";
                echo        "<table>";
                echo                "<tr>";
                echo                    "<th>Thương hiệu</th>";
                echo                    "<td>$hang</td>";
                echo                "</tr>";  
                echo                "<tr>";
                echo                    "<th>Xuất xứ</th>";
                echo                    "<td>$xuatxu</td>";
                echo                "</tr>";  
                echo                "<tr>";
                echo                    "<th>Màu sắc</th>";
                echo                    "<td>$mausac</td>";
                echo                "</tr>";  
                echo                "<tr>";
                echo                    "<th>Kích thước</th>";
                echo                    "<td>$kichthuoc</td>";
                echo                "</tr>";  
                echo        "</table>";
                echo        "<hr>";
                echo  "</div>";
               
			}
		}
    $connect->close();
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
    if (isset($_SESSION['message'])) {
        $message = $_SESSION['message'];
        echo "<script type='text/javascript'>alert('$message');</script>";
        unset($_SESSION['message']);
    }
?>
