<?php
    //Tạo câu truy vấn SQL để lấy thông tin người dùng từ bảng tbl_nguoidung dựa trên MaNguoiDung được truyền vào qua phương thức GET.
	$sql = "SELECT * FROM `tbl_nguoidung` WHERE MaNguoiDung = " . $_GET['id'];
	//Thực thi câu truy vấn bằng cách gọi phương thức query của đối tượng $connect
	$danhsach = $connect->query($sql);
	//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
	if (!$danhsach) {
		die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		exit();
	}
	//Sử dụng phương thức fetch_array để lấy một dòng dữ liệu từ kết quả truy vấn. 
	$dong = $danhsach->fetch_array(MYSQLI_ASSOC);//Chua thong tin
?>

<h3>Sửa Thông Tin Người Dùng</h3>

<form class="Form" action="index.php?do=nguoidung_sua_xuly" method="post">
	 <table border ="1" align="left" cellpadding="5">
		<input type="hidden" name="MaNguoiDung" value="<?php echo $dong['MaNguoiDung']; ?>" />
		<tr>
			<td>Tên người dùng:</td>
			<td><input type="text" name="TenNguoiDung" value="<?php echo $dong['TenNguoiDung']; ?>" /></td>
		</tr>
		<tr>
			<td>Tên đăng nhập:</td>
			<td><input type="text" name="TenDangNhap" value="<?php echo $dong['TenDangNhap']; ?>" /></td>
		</tr>
		<tr>
			<td>Mật khẩu:</td>
			<td><input type="text" name="MatKhau" value="<?php echo $dong['MatKhau']; ?>" /></td>
		<tr>
		<tr>
			<td>Quyền hạn:</td>
			<td><input type="text" name="QuyenHan" value="<?php echo $dong['QuyenHan']; ?>" /></td>
		</tr>
	<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Cập Nhật Đồ Sơ" /></td>
			</tr>
	</table>
</form>
