<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>ELDemo</title>
</head>
<body>
<table border="1">
	<tr>
			<td>����</td>
			<td>���</td>
	</tr>
	<tr>
			<%---�ӷ������ ---%>
			<td>\${1+1}</td>
			<td>${1+1 }</td>
	</tr>
	<tr>
			<%---��������� --%>
			<td>\${1-1}</td>
			<td>${1-1}</td>
	</tr>
	<tr>
			<%---��������� --%>
			<td>\${1==1}</td>
			<td>${1==1 }</td>
	</tr>
</table>
</body>
</html>