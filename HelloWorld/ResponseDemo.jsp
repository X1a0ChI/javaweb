<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Gb2312">
<title>ResponseDemo</title>
</head>
<body>
<P>将当前页面保存为word文档吗?</P>
<FORM action="ResponseDemo.jsp"method="get"name=form>
<input type="submit"value="yes"name="submit">
<input type="submit"value="no" name="submit">
</FORM>
<%
	String str=request.getParameter("submit");
	if(str==null){
		str="";
	}
	if(str.equals("yes")){
		response.setContentType("application/msword;charset=GB2312");
	}
	if(str.equals("no")){
		response.sendRedirect("ResponseDemo.jsp");
	}
%>
</body>
</html>