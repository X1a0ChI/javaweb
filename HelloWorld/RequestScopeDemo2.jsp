<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>RequestScopeDemo2</title>
</head>
<body>
	<%
	String name=(String)request.getAttribute("name");
	String age=(String)request.getAttribute("age");
	String sex=(String)request.getAttribute("sex");
	out.println("����: "+name+"<br>");
	out.println("����: "+age+"<br>");
	out.println("�Ա�: "+sex+"<br>");
	%>
</body>
</html>