<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    //context path
    String contextPath = request.getContextPath();
    request.setAttribute("contextPath",contextPath);
    //js and css version
    String jsVersion = "1.0.1";
    String cssVersion = "1.0.1";
    request.setAttribute("jsVersion",jsVersion);
    request.setAttribute("cssVersion",cssVersion);
%>
<script>
	var contextPath = '${contextPath}';
</script>