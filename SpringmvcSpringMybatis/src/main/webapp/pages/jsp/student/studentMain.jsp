<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生组件管理</title>
</head>
<body>
	<center>学生管理</center>
	<center>
		<table>
			<tr>
				<td><input id="stuAddBtn" type="button" value="新增学生" /></td>
				<td><input id="stuModBtn" type="button" value="更新学生" /></td>
				<td><input id="stuDelBtn" type="button" value="删除学生" /></td>
				<td><input id="stuGetBtn" type="button" value="查询学生" /></td>
			</tr>
		</table>
	</center>
	<hr />
	<a href="<%= request.getContextPath() %>/pages/jsp/student/studentAdd.jsp">新增</a>
	<a href="<%= request.getContextPath() %>/student/getall">获取所有</a>
	<hr />
	<center>

		<table border="1" bordercolor="blue" cellspacing="0">
			<tr>
				<th>选择</th>
				<th>准考证号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>操作</th>
			</tr>
			<c:forEach var="stu" items="${list}">
				<tr>
					<td><input type="checkbox" name="ids" value="${stu.id}" /></td>
					<td><a href="<%= request.getContextPath()%>/student/getone/${stu.id}">${stu.stuId}</a> </td>
					<td>${stu.stuName}</td>
					<td>${stu.stuSex}</td>
					<td><a href="<%= request.getContextPath()%>/student/del/${stu.id}">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</center>

</body>
</html>