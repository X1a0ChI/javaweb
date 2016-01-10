<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>ApplicationDemo</title>
</head>
<body>
	<%
	int magorVersion=application.getMajorVersion();
	int minorVersion=application.getMinorVersion();
	String info=application.getServerInfo();
	String mimeStr=application.getMimeType("ApplicationDemo.jsp");
	ServletContext contextStr=application.getContext("ApplicationDemo.jsp");
	String pathStr=application.getRealPath("/");
	%>
	<%="主要的Servlet API 版本: "+magorVersion %><br>
	<%="次要的Servlet API 版本: "+minorVersion  %><br>
	<%="服务器版本: "+info %><br>
	<%="文件的MIME类型: "+mimeStr%><br>
	<%="Application context:"+contextStr %><br>
	<%="绝对路径: "+pathStr %>
</body>
</html>