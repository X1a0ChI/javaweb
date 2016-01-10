<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>登录判断页面</title>
</head>
<body>
	<c:choose>
		<%--如果用户输入的用户名是root,则为合法用户名 --%>
		<c:when test="${param.username=='root' }">
		<%--判断用户密码是否合法,合法就直接跳转到登录页面 --%>
		<c:if test="${param.upassword=='admin' }">
		<jsp:forward page=" loginSuccess.jsp"></jsp:forward>
		</c:if>
		<jsp:forward page="loginFailure.jsp"></jsp:forward>
		</c:when>
		<%--如果用户输入的用户名不是root,则为合法的用户名,直接跳转到登录失败页面 --%>
		<c:otherwise>
			<jsp:forward page="loginFailure.jsp"></jsp:forward>
		</c:otherwise>
	</c:choose>
</body>
</html>