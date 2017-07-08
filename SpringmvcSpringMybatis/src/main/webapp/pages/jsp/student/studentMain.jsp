<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>学生组件管理</title>
<!-- 导入下面的js文件是为了使用Ajax发异步请求 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/pages/script/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/pages/script/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/pages/script/ssm/ssmnamespace.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/pages/script/ssm/student/student.js"></script>
</head>
<body>
	<center>学生管理</center>
	<center>
		<form action="<%=request.getContextPath()%>/student/del" method="post">
			<a
				href="<%=request.getContextPath()%>/pages/jsp/student/studentAdd.jsp">新增</a>
			<a href="<%=request.getContextPath()%>/student/getall">获取所有</a> <input
				type="submit" value="批量删除" /><span>----尽量不使用JavaScript的方式</span>
			<hr />
			<table id="tab01" border="1" bordercolor="blue" cellspacing="0">
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
						<td><a
							href="<%= request.getContextPath()%>/student/getone/${stu.id}">${stu.stuId}</a>
						</td>
						<td>${stu.stuName}</td>
						<td>${stu.stuSex}</td>
						<td><a
							href="<%= request.getContextPath()%>/student/del/${stu.id}">删除</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</center>
	<hr />
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
	<center>
		<table id="myTable" border="1" bordercolor="blue" cellspacing="0">
			<tr>
				<th>选择</th>
				<th>准考证号</th>
				<th>姓名</th>
				<th>性别</th>
			</tr>
		</table>
	</center>
	<!-- 修改项目的上下文 -->
	<script >
		
	
	</script>
</body>
</html>