<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="student/header.jsp" %>
<link rel="stylesheet" href="">
<title>革命人物</title>
</head>

<body>
	<div class="container">
		<%@ include file="home-nav.jsp"%>
		<div class="sub-main clearfix">
			<div class="cur-position"><span>当前位置：</span><span>革命人物</span></div>
			<div class="article-content">
				<div class="title">${entity.jcsjbt}</div>
				<div class="content">${entity.jcsjjj}</div>
			</div>
		</div>
		<%@ include file="student/footer.jsp"%>
	</div>
	<%@include file="student/student-js.jsp"%>
	<script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
	<script src="${contextPath}/resources/js/home-nav.js"></script>
</body>
</html>
