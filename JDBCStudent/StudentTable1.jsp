<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page  import="com.x1a0ch1.bean.StudentBean"%>
    <%@page import="com.x1a0ch1.DAO.StudentDAO" %>
    <%@page import="com.x1a0ch1.factory.StudentDAOFactory"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>学生列表操作页面</title>
</head>
<body>

<%
StudentDAO stuDAO=StudentDAOFactory.getStudentBeanInstance();
List<StudentBean> stuList=stuDAO.findAllStudent();
pageContext.setAttribute("stuList",stuList);
System.out.println("ok");
if(request.getParameter("stuNo")!=null){
	System.out.println("ok");
	List<StudentBean> List=(List<StudentBean>)pageContext.getAttribute("stuList");
	stuDAO.deleteStudent(request.getParameter("stuNo"));
	List=stuDAO.findAllStudent();
	pageContext.setAttribute("stuList",List);
}

%>
<table border="1">
<tr>
<td>学生学号</td>
<td>学生年龄</td>
<td>学生姓名</td>
<td>学生性别</td>
<td>删除</td>
</tr>
<c:forEach var="student" items="${pageScope.stuList}">
<tr>
<td>${student.stuNo}</td>
<td>${student.age }</td>
<td>${student.stuName }</td>
<td>${student.sex }</td>
<td><a href="StudentTable1.jsp? stuNo=${student.stuNo}" >删除</a></td>
</tr>
</c:forEach>
<td><a href="StudentTable1.jsp">&lt;&lt;更新</a>
</table>
</body>
</html>