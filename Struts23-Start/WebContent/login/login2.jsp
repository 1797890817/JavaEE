<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts23-Start-login2</title>
</head>
<body>
	<s:form action="login2" method="post" theme="simple">
		<table>
			<tr>
				<td>用 户：</td>
				<td><s:textfield name="username" maxlength="40" size="18" /></td>
			</tr>
			<tr>
				<td>密 码：</td>
				<td><s:password name="password" maxlength="40" size="18" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><s:submit value="确定" /> <s:reset
						value="重置" /></td>
			</tr>
		</table>

	</s:form>
</body>
</html>