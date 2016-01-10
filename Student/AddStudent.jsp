<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>添加学生信息</title>
</head>
<body>
<%
request.setCharacterEncoding("GB18030");
%>
<jsp:useBean id="student" scope="page" class="com.x1a0ch1.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
<%--设置实例化的对象属性 --%>
<table width="700" border="1">
<tr><td>学生学号 : </td><td><jsp:getProperty property="stuNum" name="student"/></td></tr>
<tr><td>学生姓名:</td><td> <jsp:getProperty property="name" name="student"/></td></tr>
<tr><td>学生年纪:</td><td> <jsp:getProperty property="age" name="student"/></td></tr>
<tr><td>学生性别:</td><td> <jsp:getProperty property="sex" name="student"/></td></tr>
</table>
</body>
</html>