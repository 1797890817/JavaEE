<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Home,from forward</h1>
	<a href="pages/login.html">登录</a>
	<%-- <a href="<%= request.getContextPath() %>/student/getall">学生组件管理</a> --%>
	<a href="<%= request.getContextPath() %>/pages/jsp/student/studentMain.jsp">学生组件管理</a> <!-- 使用异步ajax的方式！ -->
	
</body>
</html>