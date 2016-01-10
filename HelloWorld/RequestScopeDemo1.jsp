<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ResquestScopeDemo1</title>
</head>
<body>
	<%
	request.setAttribute("name","James");
	request.setAttribute("age","30");
	request.setAttribute("sex","男");
	%>
	<jsp:forward page="RequestScopeDemo2.jsp"></jsp:forward>
</body>
</html>