<?php
//Kiểm tra xem biến người dùng có tồn tại hay không
$MaND = isset($_SESSION['MaND']) ? $_SESSION['MaND'] : '';

$MatKhauCu = isset($_POST['MatKhauCu']) ? $_POST['MatKhauCu'] : '';
$MatKhauMoi = isset($_POST['MatKhauMoi']) ? $_POST['MatKhauMoi'] : '';
$XacNhanMatKhauMoi = isset($_POST['XacNhanMatKhauMoi']) ? $_POST['XacNhanMatKhauMoi'] : '';

if ($MatKhauMoi != $XacNhanMatKhauMoi) {
    ThongBaoLoi("Không xác nhận được mật khẩu!");
} else {
    // Mã hóa mật khẩu
    $MatKhauCu = md5($MatKhauCu);
    $sql_kiemtra = "SELECT * FROM `tbl_nguoidung` WHERE `MaNguoiDung` = ?";
    // Dòng này chuẩn bị câu lệnh SQL để thực thi và kiểm tra.
    if ($stmt = $connect->prepare($sql_kiemtra)) {
        $stmt->bind_param("s", $MaND);
        $stmt->execute();//sẽ được thực thi
        $result = $stmt->get_result();// được lấy
        $row = $result->fetch_array(MYSQLI_ASSOC);//Chứa

        if ($MatKhauCu === $row['MatKhau']) {
            $MatKhauMoi = md5($MatKhauMoi);
            $sql = "UPDATE `tbl_nguoidung` SET `MatKhau` = ? WHERE `MaNguoiDung` = ?";
            if ($stmt = $connect->prepare($sql)) {
                $stmt->bind_param("ss", $MatKhauMoi, $MaND);
                $stmt->execute();
                header("Location: index.php");
                exit();
            } else {
                ThongBaoLoi("Lỗi kết nối cơ sở dữ liệu.");
            }
        } else {
            ThongBaoLoi("Sai mật khẩu!");
        }
    } else {
        ThongBaoLoi("Lỗi kết nối cơ sở dữ liệu.");
    }
}
?>