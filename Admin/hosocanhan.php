<?php
    //tạo câu lệnh SQL để truy vấn thông tin người dùng từ bảng tbl_nguoidung dựa trên giá trị của biến $_SESSION
	$sql = "SELECT * FROM `tbl_nguoidung` WHERE MaNguoiDung = " . $_SESSION['MaND'];
	
	$danhsach = $connect->query($sql);
	//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
	if (!$danhsach) {
		die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		exit();
	}
	
	$dong = $danhsach->fetch_array(MYSQLI_ASSOC);
?>
<h3>Hồ sơ cá nhân</h3>
<form action="index.php?do=hosocanhan_xuly" method="post">
	<table border ="1" align="left" cellpadding="5">
		<input type="hidden" value="<?php echo $dong['MaNguoiDung']; ?>" name="MaNguoiDung" />
		<tr>
			<td>Họ và tên:</td>
			<td><input type="text" value="<?php echo $dong['TenNguoiDung']; ?>" name="HoVaTen" size="25" /></td>
		</tr>
		<tr>
			<td>Tên đăng nhập:</td>
			<td><input type="text" value="<?php echo $dong['TenDangNhap']; ?>" name="TenDangNhap" size="25" /></td>
		</tr>
		<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Cập nhật hồ sơ" /></td>
			</tr>
	</table>
</form>