<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request['contextPath']}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户列表</title>
</head>
<body>
<form action="queryUsers.action" method="post">
<table align="center" border="1" cellspacing="0" width="680">
	<tr>
		<th>id</th>
		<th align="left">
			<input type="text" name="users.id" value="${users.id}" />
		</th>
		<th>姓名</th>
		<th align="left">
			<input type="text" name="users.name" value="${users.name}" />&nbsp;&nbsp;
		</th>
	</tr>
	<tr>
		<th>密码</th>
		<th align="left">
			<input type="text" name="users.pass" value="${users.pass}" />
		</th>
		<th>年龄</th>
		<th align="left">
			<input type="text" name="users.age" value="${users.age}" />&nbsp;&nbsp;
			<input type="submit" value="查询"/>&nbsp;&nbsp;
			<a href="addUsers.action">添加</a>
		</th>
	</tr>	
</table>
</form>
<br/>
<table align="center" border="1" cellspacing="0" width="680">
	<tr>
		<th>序号</th>
		<th>ID</th>
		<th>姓名</th>
		<th>密码</th>
		<th>年龄</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${usersList}" var="users" varStatus="vs" >	
	<tr>
		<td>${vs.count}</td>
		<td>${users.id}</td>
		<td>${users.name}</td>
		<td>${users.pass}</td>
		<td>${users.age}</td>
		<td width="120">
			<a href="editUsers.action?users.id=${users.id}">修改</a>&nbsp;
			<a href="deleteUsers.action?users.id=${users.id}">删除</a>
		</td>
	</tr>
	</c:forEach>
</table>

<form action="queryUsers.action" method="post">
<input type="hidden" name="users.id" value="${users.id}" />
<input type="hidden" name="users.name" value="${users.name}" />
<input type="hidden" name="users.pass" value="${users.pass}" />
<input type="hidden" name="users.age" value="${users.age}" />
<table  align="center" border="0" cellspacing="0" width="680">
	<tr>
		<td align="center">
			共${pager.recordCount}条记录    每页显示${pager.pageSize}条    分${pager.pageCount}页/第${pager.currentPage}页
		   	 <a style="cursor:pointer;text-decoration: underline;" href="queryUsers.action?requestPage=${pager.firstPage}">首页</a>
		   	 <a style="cursor:pointer;text-decoration: underline;" href="queryUsers.action?requestPage=${pager.priviousPage}">上一页</a>
		   	 <a style="cursor:pointer;text-decoration: underline;" href="queryUsers.action?requestPage=${pager.nextPage}">下一页</a>
		   	 <a style="cursor:pointer;text-decoration: underline;" href="queryUsers.action?requestPage=${pager.lastPage}">尾页</a>
		   	 <input style="text-align:center;border: 1px solid #CCCCCC;" type="text" name="requestPage" onchange="this.value=(new RegExp('^[0-9]*$').test(this.value)) ? this.value : 1" value="${param.requestPage}" size="2"/>
		   	 <input type="submit" value="转到"/>
		</td>
	</tr>
</table>
</form>

</body>
</html>