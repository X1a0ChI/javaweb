<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>PageContextDemo</title>
</head>
<body>
	<%
		pageContext.setAttribute("name","page_buda");
		request.setAttribute("name","request_buda");
		session.setAttribute("name", "session_buda");
		application.setAttribute("name", "application_buda");
	%>
	<%
		String pageStr=(String)pageContext.getAttribute("name",pageContext.PAGE_SCOPE);
		String requestStr=(String)pageContext.getAttribute("name",pageContext.REQUEST_SCOPE);
		String sessionStr=(String)pageContext.getAttribute("name",pageContext.SESSION_SCOPE);
		String applicationStr=(String)pageContext.getAttribute("name",pageContext.APPLICATION_SCOPE);
	%>
	<%="page范围: name属性:"+pageStr %><br>
	<%="request范围: name属性: "+requestStr %><br>
	<%="session范围:  name属性: "+sessionStr %><br>
	<%="application范围:  name属性:"+applicationStr %>
</body>
</html>