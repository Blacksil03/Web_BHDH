<?php
	$MaND = $_POST['MaNguoiDung'];
	$HoVaTen = $_POST['HoVaTen'];
	$TenDangNhap = $_POST['TenDangNhap'];

	
		$sql = "UPDATE `tbl_nguoidung`
		SET `TenNguoiDung` = '$HoVaTen',
			`TenDangNhap` = '$TenDangNhap'

		WHERE `MaNguoiDung` = '$MaND';
		";
		$danhsach = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		 exit();
		}
		$_SESSION['HoTen']=$HoVaTen;
		header("Location: index.php");
	
?>