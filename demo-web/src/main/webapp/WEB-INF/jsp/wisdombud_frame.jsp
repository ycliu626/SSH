﻿<!doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=8,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>智能管理平台综合监控系统</title>
<link rel="icon" type="image/x-icon" href="images/tailaike.ico" />
<link rel="shortcut icon" type="image/x-icon" href="images/tailaike.ico" />
<link rel="bookmark" type="image/x-icon" href="images/tailaike.ico" />

<link rel="stylesheet" type="text/css" href="resources/vendor/extjs-4.2.1/resources/css/ext-all.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/extjs-4.2.1/examples/shared/example.css">
<!-- Ext4.2.1 -->
<script type="text/javascript" src="resources/vendor/extjs-4.2.1/ext-all-debug.js"></script>
<script type="text/javascript" src="resources/vendor/extjs-4.2.1/locale/ext-lang-zh_CN.js"></script>
<script type="text/javascript" src="resources/js/global-constant.js"></script>
<script type="text/javascript" src="resources/vendor/extjs-4.2.1/examples/shared/examples.js"></script>
<!-- 页面入口 -->
<script type="text/javascript" src="resources/js/app.js">
</script>
<script type="text/javascript"> 
</script> 
</head>
<body>
	<form id="mainForm" >
		<input type="hidden" id="responseData" name="responseData" value="<s:property value='responseData'/>">
		<input type="hidden" id="requestData" name="requestData">
	</form>
</body>
</html>

