<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>支部特色活动</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>
		<div class="info-board clearfix">
			<div class="activity-banner"></div>
			<div class="detail">
				<div class="title">${entity.title}</div>
				<div style="margin: 15px;text-align: center;">${entity.branchName}</div>
				<div class="releaseDate" style="margin: 20px 5px 20px 20px;">活动时间:<s:date name="entity.activityDate" format="yyyy年MM月dd日" /></div>
				<div class="place">活动地点:${entity.place}</div>
				<div class="readTimes">浏览:${entity.readTimes}次</div>
				<div style="clear: both;"></div>
				<div class="content">${entity.content}</div>

			</div>

			<div class="right-panel">
				<%@ include file="../notice-right.jsp"%>
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>
</body>

<%@include file="../student-js.jsp"%>
<script>
$(function(){
	addTip("支部特色活动");
});
</script>
</html>