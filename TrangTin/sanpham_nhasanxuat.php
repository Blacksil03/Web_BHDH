

<?php

// Lấy mã lĩnh vực
		 
		//Kiểm tra xem biến $_GET["limit"] có tồn tại hay không
		if(isset($_GET["limit"]) == true)
		{
			$_SESSION['limit'] += 5;
		}
		else
		{
			$_SESSION['limit'] = 10;
		}
		$limit_ok =  $_SESSION['limit'];
		//echo $limit_ok;
		//Thực hiện truy vấn SQL để lấy thông tin nhà sản xuất dựa trên $IdNhaSanXuat.
		$IdNhaSanXuat = $_GET["id_nsx"];

		$sql1 =  "select * from tbl_nhasanxuat where IdNhaSanXuat='" . $IdNhaSanXuat . "'"; 
		$danhsach1 = $connect->query($sql1);
		$row1 = $danhsach1->fetch_array(MYSQLI_ASSOC);
    
        $sql2 =  "select * from tbl_sanpham where IdNhaSanXuat='" . $IdNhaSanXuat . "' ORDER by `IdSanPham` DESC  LIMIT 0, ".$limit_ok; 
		
		$danhsach = $connect->query($sql2);
		
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}

        //Thực hiện truy vấn SQL để đếm số lượng sản phẩm của nhà sản xuất dựa trên $IdNhaSanXuat.
		$sql3 =  "select * from tbl_sanpham where IdNhaSanXuat='" . $IdNhaSanXuat . "'"; 
		$danhsach2 = $connect->query($sql3);
		$count_sp_nsx = mysqli_num_rows($danhsach2);		
		
		//Sử dụng vòng lặp while để duyệt qua từng sản phẩm trong danh sách $danhsach và hiển thị thông tin của mỗi sản phẩm.
		while ($row = $danhsach->fetch_array(MYSQLI_ASSOC)) 		
		{				
			$giaban = $row['DonGia'] - (($row['TiLeGiamGia'] /100) * $row['DonGia']);
			echo "<div class='khungsanpham'>";
				echo "<div class='card'>";					
					echo "<a href='index.php?do=sanpham_chitiet&id_sp=" . $row['IdSanPham'] . "&id_nsx=" . $row['IdNhaSanXuat'] . "'>";
						echo "<img class='hinhanhphim' src=" . $row["HinhAnh"] . "  style='width: 190px; height: 140px;'>";
						echo "<span class='tenphim' ></span> <br />";
					echo "</a>";
					echo "<span class=\"luotxem\">". $row['LuotXem'] ." lượt xem </span><span class=\"giaban\">". number_format($giaban)." đ</span>";
					echo "<br /><span class=\"luotxem\"></span><span class=\"dongia\">". number_format($row['DonGia'])." đ</span>";
				echo "</div>";
				echo "<p><a  href='index.php?do=sanpham_chitiet&id_sp=" . $row['IdSanPham'] . "&id_nsx=" . $row['IdNhaSanXuat'] . "'>" . $row['TenSanPham'] . "</a></p>";
				
			echo "</div>";
			
		}
		

        //Kiểm tra xem số lượng sản phẩm của nhà sản xuất có lớn hơn giới hạn hiện tại ($_SESSION['limit']) hay không
		if($count_sp_nsx > $_SESSION['limit'])
		{
			echo "<h3 class=\"xemthem\"><a href='index.php?do=sanpham_nhasanxuat&id_nsx=" . $row1['IdNhaSanXuat'] . "&limit=ok'>Xem thêm các sản phẩm của <b>". $row1['TenNhaSanXuat']."</b></a></h3></td>";
		
		}

						
	
?>

</table>