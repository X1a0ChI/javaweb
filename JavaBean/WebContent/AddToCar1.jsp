<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page import="com.x1a0ch1.bean.Commodity" %>
    <%@page import="com.x1a0ch1.dao.CommodityDAO" %>
    <%@page import="com.x1a0ch1.factory.CommodityDAOFactory" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>购物车列表</title>
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
	session.setAttribute("car",car);
}
if(request.getParameter("listid")!=null){
	List<Commodity> car=(List<Commodity>)session.getAttribute("car");
	int listid=Integer.parseInt(request.getParameter("listid"));
	car.remove(listid);
	session.setAttribute("car",car);
}
%>
你已经购买了如下商品: 
<table width="700" border="1">
<tr>
<td>商品ID</td>
<td>商品名称</td>
<td>商品价格</td>
<td>删除</td>
</tr>
<%--输出购物车中的商品信息 --%>
<c:forEach var="commodity" items="${sessionScope.car}" varStatus="stat">
<tr>
<td>${commodity.id}</td>
<td>${commodity.name }</td>
<td><fmt:formatNumber type="currency" value="${commodity.price*commodity.agio}"/></td>
<td><a href="AddToCar1.jsp?listid=${stat.index }">删除</a></td>
</tr> 
</c:forEach>
<tr>
<td><a href="ShowCommodityList.jsp">&lt;&lt;继续购物</a></td>
</tr>
</table>
</body>
</html>