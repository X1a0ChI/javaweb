<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>JSPIncudeDemo</title>
</head>
<body>
	<h2>包含静态文件</h2>
	<jsp:include page="JSPIncluded.txt"></jsp:include><%--动态地包含一个静态文件 --%>
	<h2>包含动态文件</h2>
	<jsp:include page="JSPIncluded.jsp"></jsp:include><%--动态地包含一个动态文件 --%>
</body>
</html>