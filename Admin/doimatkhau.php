<h3>Đổi mật khẩu</h3>
<form action="index.php?do=doimatkhau_xuly" method="post">
	<table border ="1" align="left" cellpadding="5">
		<input type="hidden" value="<?php echo $_SESSION['MaND']; ?>" name="MaNguoiDung" />
		<tr>
			<td>Mật khẩu cũ:</td>
			<td><input type="password" name="MatKhauCu" size="25" /></td>
		</tr>
		<tr>
			<td>Mật khẩu mới:</td>
			<td><input type="password" name="MatKhauMoi" size="25" /></td>
		</tr>
		<tr>
			<td>Xác nhận mật khẩu mới:</td>
			<td><input type="password" name="XacNhanMatKhauMoi" size="25" /></td>
		</tr>
		<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Cập nhật mật khẩu" /></td>
			</tr>
	</table>
</form>
<?php

