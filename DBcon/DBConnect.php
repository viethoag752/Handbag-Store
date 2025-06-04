<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<?php
		$connect = new mysqli("localhost","root","","qltx");		
		if ($connect->connect_error) {
			die("Kết nối thất bại: " . $connect->connect_error);
		}
		else {
	
		}
	?>
</body>
</html>