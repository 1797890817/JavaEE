<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新组件</title>
</head>
<body>
	<center>修改学生</center>
	<hr />
	<center>
		<form action="/SpringmvcSpringMybatis/student/mod" method="post">
			<input id="id" type="hidden" name="id" value="${stu.id}">
			<table>
				<tr>
					<td><span>准考证号：</span></td>
					<td><input id="stuId" name="stuId" type="text" value="${stu.stuId}" /></td>
				</tr>
				<tr>
					<td><span>姓名：</span></td>
					<td><input id="stuName" name="stuName" type="text" value="${stu.stuName}"  /></td>
				</tr>
				<tr>
					<td><span>性别：</span></td>
					<td><input id="stuSex" name="stuSex" type="text" value="${stu.stuSex}" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="保存" /> <input
						type="reset" value="取消" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>