<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>RequestDemo</title>
</head>
<body>
<%
request.setCharacterEncoding("gb2312");
String username=request.getParameter("username");
String upassword=request.getParameter("upassword");
String repassword=request.getParameter("repassword");
String name=request.getParameter("name");
String age=request.getParameter("age");
String sex=request.getParameter("sex");
%>
�û���:<%=username %><br>
����:<%=upassword %><br>
ȷ������:<%=repassword %><br>
����: <%=name%><br>
����:<%=age %><br>
�Ա�:<%=sex %>
</body>
</html>