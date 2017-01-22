<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request['contextPath']}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户编辑</title>
</head>
<body>
<form action="saveUsers.action" method="post">
<input type="hidden" name="users.id" value="${users.id}" />
<table align="center" border="1" cellspacing="0" width="500">
	<tr>
		<th>姓名</th>
		<td align="left">
			<input type="text" id="name" name="users.name" value="${users.name}" />
			<span id="message"></span>
		</td>
	</tr>
	<tr>
		<th>密码</th>
		<td align="left"><input type="text" id="pass" name="users.pass" value="${users.pass}" /></td>
	</tr>
	<tr>
		<th>年龄</th>
		<td align="left"><input type="text" id="age" name="users.age" value="${users.age}" /></td>
	</tr>		
	<tr>
		<td colspan="2" align="left">
			<input type="submit" value="提交"/>&nbsp;&nbsp;
			<input type="reset" value="重置"/>
		</td>
	</tr>	
</table>
</form>
<script type="text/javascript" src="${ctx}/script/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/script/validator.js"></script>
<script type="text/javascript">//<![CDATA[
$(document).ready(function(){
	
	$("#name").attr("datatype","Require").attr("msg","请填写您的用户名！");
	$("#pass").attr("datatype","Require").attr("msg","请填写您的密码！");
	$("#age").attr("datatype","Require").attr("msg","请填写您的年龄！");
	
	$(document.forms[0]).submit(function(){
		return Validator.Validate(this, 3);
	});
	
});
//]]>
</script> 

</body>
</html>