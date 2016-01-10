<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page  import="com.x1a0ch1.bean.StudentBean"%>
    <%@page import="com.x1a0ch1.DAO.StudentDAO" %>
    <%@page import="com.x1a0ch1.factory.StudentDAOFactory"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ѧ���б�</title>
</head>
<body>
<%
StudentDAO stuDAO=StudentDAOFactory.getStudentBeanInstance();
List<StudentBean> stuList=stuDAO.findAllStudent();
pageContext.setAttribute("stuList",stuList);
%>
<table border="1">
<tr>
<td>ѧ��ѧ��</td>
<td>ѧ�����</td>
<td>ѧ������</td>
<td>ѧ���Ա�</td>
</tr>
<%--ѭ�����ѧ����Ϣ --%>
<c:forEach var="student" items="${pageScope.stuList }">
<tr>
<td>${student.stuNo}</td>
<td>${student.age }</td>
<td>${student.stuName}</td>
<td>${student.sex }</td>
</tr>
</c:forEach>

</table>
	
</body>
</html>