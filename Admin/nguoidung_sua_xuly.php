<?php
	// Lấy thông tin từ FORM
	$MaNguoiDung = $_POST['MaNguoiDung'];
	$TenNguoiDung = $_POST['TenNguoiDung'];
	$TenDangNhap = $_POST['TenDangNhap'];
	$QuyenHan = $_POST['QuyenHan'];
	$MatKhau = $_POST['MatKhau'];
	
	// Kiểm tra
	if(trim($TenDangNhap) == "")
		ThongBaoLoi("Tên nhà sản xuất không được bỏ trống!");
	if(trim($MatKhau) == "")
		ThongBaoLoi("Tên nhà sản xuất không được bỏ trống!");
	else
	{
		$sql = "update `tbl_nguoidung` 
				SET `TenDangNhap` = '$TenDangNhap',
					`MatKhau` = '$MatKhau',
					`TenNguoiDung` = '$TenNguoiDung',
					`QuyenHan` = '$QuyenHan'
				WHERE `MaNguoiDung` = $MaNguoiDung";
		$danhsach = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		else
		{
			header("Location: index.php?do=nguoidung");
		}
		
		
	}

	$dong = $danhsach->fetch_array(MYSQLI_ASSOC);
?>
