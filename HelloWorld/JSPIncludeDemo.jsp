<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>JSPIncudeDemo</title>
</head>
<body>
	<h2>������̬�ļ�</h2>
	<jsp:include page="JSPIncluded.txt"></jsp:include><%--��̬�ذ���һ����̬�ļ� --%>
	<h2>������̬�ļ�</h2>
	<jsp:include page="JSPIncluded.jsp"></jsp:include><%--��̬�ذ���һ����̬�ļ� --%>
</body>
</html>