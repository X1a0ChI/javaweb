<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>9*9乘法表</title>
</head>
<body>
<table border="1">

	<c:forEach var="i" begin="1" end="9">
	<tr>
		<c:forEach var="j" begin="1" end="${i}">
		<td>
			<c:out value="${i}*${j}=${i*j}"/>
		</td>
		</c:forEach>
		</tr>
		<p>
	
	</c:forEach>

</table>
</body>
</html>