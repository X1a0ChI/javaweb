<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Java Bean 测试</title>
</head>
<body>
<!-- 创建lee.person的实例,该实例名为p1 -->
<jsp:useBean id="p1" class="lee.Person" scope="page"/>
<!-- 设置P1的name属性 -->
<jsp:setProperty name="p1" property="name" value="wawa"/>
<jsp:setProperty name="p1" property="age" value="23"/>
<jsp:getProperty name="p1" property="name"/><br/>
<jsp:getProperty name="p1" property="age"/>
</body>
</html>