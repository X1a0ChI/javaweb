<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>���ѧ����Ϣ</title>
</head>
<body>
<%
request.setCharacterEncoding("GB18030");
%>
<jsp:useBean id="student" scope="page" class="com.x1a0ch1.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
<%--����ʵ�����Ķ������� --%>
<table width="700" border="1">
<tr><td>ѧ��ѧ�� : </td><td><jsp:getProperty property="stuNum" name="student"/></td></tr>
<tr><td>ѧ������:</td><td> <jsp:getProperty property="name" name="student"/></td></tr>
<tr><td>ѧ�����:</td><td> <jsp:getProperty property="age" name="student"/></td></tr>
<tr><td>ѧ���Ա�:</td><td> <jsp:getProperty property="sex" name="student"/></td></tr>
</table>
</body>
</html>