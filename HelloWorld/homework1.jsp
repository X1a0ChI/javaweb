<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>10*10的表格</title>
</head>
<body>

<table border="1">	
<%
for(int i=0;i<11;i++){
%><tr>
	<%
	for(int j=0;j<11;j++){
	%>
	<td>a</td>
	<%}%>
	</tr>
	<%} %>
</table>

</body>
</html>