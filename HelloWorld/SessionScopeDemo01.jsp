<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312"">
<title>SessionScopeDemo01</title>
</head>
<body>
	<%
	long creatTime =session.getCreationTime();
	out.println("session生成的时间: "+creatTime+"<br>");
	String sessionID=session.getId();
	out.println("session 的ID: "+sessionID+"<br>");
	long lastTime=session.getLastAccessedTime();
	out.println("最后通过session发送的请求时间: "+lastTime+"<br>");
	boolean isnew=session.isNew();
	out.println("是否为新的: "+isnew);
	%>
</body>
</html>