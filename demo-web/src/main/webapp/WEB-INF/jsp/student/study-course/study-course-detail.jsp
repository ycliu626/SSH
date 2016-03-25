<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程中心</title>

<link href="js-lib/alertify/css/alertify.core.css" rel="stylesheet">
<link href="js-lib/alertify/css/alertify.bootstrap.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/vendor/bootstrap-3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>
		<div class="panel panel-default">
			
		</div>

	</div>
</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript"
	src="resources/js/student/study-course/study-course-list.js"></script>
<script type="text/html" id="study-course-list">
	{{each results as info}}
		<tr>
			<td><a>{{info.title}}</a></td>
			<td>{{info.startDate}}</td>
			<td>{{info.place}}</td>
		</tr>
 	{{/each}}
</script>
</html>