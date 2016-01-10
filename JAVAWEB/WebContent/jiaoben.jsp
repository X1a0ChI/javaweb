<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>脚本</title>
</head>
<body>
<table bgcolor="#9999dd" border="1" width="300">
<!-- 开始Java脚本 -->
<%
for(int i=0;i<10;i++){
%>
<!-- 上面的循环将控制<tr>标签的循环 -->
<tr>
<td>循环</td>
<td><%=i %>
</td>
</tr>
<%
}%>
</table>

</body>
</html>