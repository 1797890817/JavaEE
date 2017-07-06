<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理组件</title>
</head>
<body>
	<center>学生管理</center>

	<center>
		<table>
			<tr>
				<td><input id="addBtn" name="addBtn" type="button" value="新增学生" /></td>
				<td><input id="modBtn" name="modBtn" type="button" value="更新学生" /></td>
				<td><input id="delBtn" name="delBtn" type="button" value="删除学生" /></td>
			</tr>
		</table>
	</center>
	<hr>
	<center>
		<table id="tb01" border="1" bordercolor="black" cellspacing="0">
			<tr>
				<th>选择</th>
				<th>学生编号</th>
				<th>学生姓名</th>
				<th>性别</th>
			</tr>
		<tr>
			<td><input id="cb0" type="checkbox" value="01"></td>
			<td>001</td>
			<td>张三</td>
			<td>男</td>
		
		</tr>

		</table>
	</center>


</body>
</html>