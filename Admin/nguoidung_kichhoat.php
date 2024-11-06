<?php
    //Kiểm tra xem có tham số quyen được truyền vào thông qua phương thức GET hay không
	if(isset($_GET['quyen']))
	{
		//cập nhật trường QuyenHan trong bảng tbl_nguoidung
		$sql = "UPDATE `tbl_nguoidung` SET `QuyenHan` = " . $_GET['quyen'] . " WHERE `MaNguoiDung` = " . $_GET['id'];
		$danhsach = $connect->query($sql);//Câu truy vấn được thực thi bằng cách gọi phương thức query của đối tượng $connect
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		
		if($danhsach)
			header("Location: index.php?do=nguoidung");
		else
			ThongBaoLoi(mysql_error());
	}//Kiểm tra xem có tham số khoa được truyền vào thông qua phương thức GET hay không. 
	elseif(isset($_GET['khoa']))
	{
		$sql = "UPDATE `tbl_nguoidung` SET `Khoa` = " . $_GET['khoa'] . " WHERE `MaNguoiDung` = " . $_GET['id'];
		$danhsach1 = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach1) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		
		if($danhsach1)
			header("Location: index.php?do=nguoidung");
		else
			ThongBaoLoi(mysql_error());
	}
	else
	{
		header("Location: index.php?do=nguoidung");
	}
?>