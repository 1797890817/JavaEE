<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加新记录</title>
</head>
<body>

<center>
<form action="/student/add" method="post">
	<span>学号：</span><input id="stuid" name="stuId" type="text" title="请输入学号" /><br/>
	<span>姓名：</span><input id="stuname" name="stuName" type="text" title="请输入用户名" /><br/>
	<span>性别：</span><input id="stusex" name="stuSex" type="text" title="请输入性别" /><br/>
	<tr><input type="submit" value="保存"> <input type="reset" value="取消" >
	 </tr>
</form>

</center>
</body>
</html>