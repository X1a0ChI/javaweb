<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page import="com.x1a0ch1.dao.CommodityDAO" %>
    <%@page import="com.x1a0ch1.factory.CommodityDAOFactory" %>
    <%@page import="com.x1a0ch1.bean.Commodity" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>���ﳵ�б�</title>
</head>
<body>
<%
	if(request.getParameter("id")!=null){
		List<Commodity> car=null;
		if(session.getAttribute("car")==null){
			car=new ArrayList<Commodity>();
		}else{
			car=(List<Commodity>)session.getAttribute("car");
		}
		CommodityDAO commodityDAO=CommodityDAOFactory.getCommodityDAOInstance();
		int id=Integer.parseInt(request.getParameter("id"));
		car.add(commodityDAO.findCommodityById(id));
		session.setAttribute("car", car);
	}
%>
���Ѿ�������������Ʒ
<table width="500" border="1">
<tr>
<td>��Ʒ</td>
<td>��Ʒ����</td>
<td>��Ʒ�۸�</td>
</tr>
<%--������ﳵ�е���Ʒ��Ϣ --%>
<c:forEach var="commodity" items="${sessionScope.car}">
<tr>
<td>${commodity.id}</td>
<td>${commodity.name}</td>
<td><fmt:formatNumber type="currency" value="${commodity.price*commodity.agio}"/></td>
</tr>
</c:forEach>
<tr>
<td><a href="ShowCommodityList.jsp">&lt;&lt;��������</a>
</tr>
</table>
</body>
</html>