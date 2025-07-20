<?php
   if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

    if (isset($_SESSION["user_id"])) {  
        $user_id = $_SESSION["user_id"];
        $user_name = $_SESSION["username"];
        echo"   <div class=\"log\" >";
		echo	    "<a  id = \"DK\" href=\"logout.php\"><h4>Đăng Xuất</h4></a>";
		echo	    "<a  id =\"DN\"  href=\"#\"><h4>$user_name</h4></a>";
		echo    "</div>";

    }else 
    {
        echo"   <div class=\"log\" >";
		echo	    "<a  id = \"DK\" href=\"register.php\"\"#\"><h4>Đăng Ký</h4></a>";
		echo	    "<a  id =\"DN\"  href=\"login.php\"><h4>Đăng nhập</h4></a>";
		echo    "</div>";
       
    }

?>