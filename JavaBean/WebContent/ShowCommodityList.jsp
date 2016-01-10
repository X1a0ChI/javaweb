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
<title>商品列表</title>
</head>
<body>

<%
	CommodityDAO commodityDAO=CommodityDAOFactory.getCommodityDAOInstance();
	List<Commodity> commodityList=commodityDAO.findAllCommodity();
	pageContext.setAttribute("commodityList",commodityList);
%>
<table width="700" border="1">
<tr>
<td>商品ID</td>
<td>商品名称</td>
<td>商品价格</td>
<td>商品折扣</td>
<td>优惠价格</td>
<td>购买</td>
</tr>
<%--循环输出商品信息 --%>

<c:forEach var="commodity" items="${pageScope.commodityList }">
<tr>
<td>${commodity.id}</td>
<td>${commodity.name}</td>
<td><fmt:formatNumber type="currency"  value="${commodity.price}"/></td>
<td>${commodity.agio}</td>
<td><fmt:formatNumber type="currency" value="${commodity.price* commodity.agio}"/></td>
<td><a href="AddToCar1.jsp?id=${commodity.id}">购买</a></td>
</tr>
</c:forEach>
<tr>
<td><a href="AddToCar1.jsp">查看购物车&gt;&gt;</a>
</tr>
</table>
</body>
</html>