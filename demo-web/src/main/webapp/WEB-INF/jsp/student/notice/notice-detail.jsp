<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>通知公告</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="info-board clearfix">
			<div class="article">
				<div class="title">${entity.title}</div>
				<div class="releaseDate">发布时间:<s:date name="entity.startDate" format="yyyy年MM月dd日" /></div>
				<div class="content">${entity.content}</div>
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>
</body>
<%@include file="../student-js.jsp"%>
<script>
$(function(){
	addTip("通知公告");
});
</script>
</html>