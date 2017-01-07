<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Login</title>
</head>
<body>
	<form action="users.action" method="post">
		<table>
			<tr>
				<td>用 户：</td>
				<td><input type="text" id="username" name="username"
					maxlength="40" size="18" /></td>
			</tr>
			<tr>
				<td>密 码：</td>
				<td><input type="text" id="password" name="password"
					maxlength="40" size="18" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="确定" />
					<input type="reset" value="重置" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
