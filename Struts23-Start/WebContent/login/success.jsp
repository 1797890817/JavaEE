<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login success</title>
</head>
<body>
	<table>
		<tr>
			<td>用 户：</td>
			<td>${username}</td>
		</tr>
		<tr>
			<td>密 码：</td>
			<td>${password}</td>
		</tr>
	</table>
	<a href="javascript:history.back(-1)">返回</a>
</body>
</html>