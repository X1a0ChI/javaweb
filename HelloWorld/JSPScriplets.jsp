<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <meta http-equiv="refresh" content="10;url="HelloWorld.jsp"">
<html>
<head>
<title>	JSP SCRIPTLETS</title>
</head>
<body>
<%!	int visit1=1;
		int visit2=1;%>
		���Ǳ�ҳ�ĵ�<%=visit1++%>���ÿ�(JSP���ʽʵ��) <br>
		���Ǳ�ҳ�ĵ�<%out.println(visit2++); %>���ÿ�(JSPSCRIPTLETSʵ��)
	
</body>
</html>