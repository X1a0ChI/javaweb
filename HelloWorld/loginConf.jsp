<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��¼�ж�ҳ��</title>
</head>
<body>
	<c:choose>
		<%--����û�������û�����root,��Ϊ�Ϸ��û��� --%>
		<c:when test="${param.username=='root' }">
		<%--�ж��û������Ƿ�Ϸ�,�Ϸ���ֱ����ת����¼ҳ�� --%>
		<c:if test="${param.upassword=='admin' }">
		<jsp:forward page=" loginSuccess.jsp"></jsp:forward>
		</c:if>
		<jsp:forward page="loginFailure.jsp"></jsp:forward>
		</c:when>
		<%--����û�������û�������root,��Ϊ�Ϸ����û���,ֱ����ת����¼ʧ��ҳ�� --%>
		<c:otherwise>
			<jsp:forward page="loginFailure.jsp"></jsp:forward>
		</c:otherwise>
	</c:choose>
</body>
</html>