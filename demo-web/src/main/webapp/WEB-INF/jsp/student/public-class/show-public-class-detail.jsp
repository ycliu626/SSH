<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>红旗飘飘公开课</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="info-board clearfix">
			<div class="public-class-banner"></div>
			<div class="detail">
				<div class="title">${entity.title}</div>
				<div class="speaker">主讲人:${entity.speaker}</div>
				<div class="releaseDate">召开时间:<s:date name="entity.startDate" format="yyyy年MM月dd日" /></div>
				<div class="place">召开地点:${entity.place}</div>
				<div class="readTimes">浏览:${entity.readTimes}次</div>
				<div style="clear: both;"></div>
				<div class="speaker">参加人数:${entity.number}</div>
				<div class="place">会后意愿人数:${entity.hopeNumber}</div>
				<div style="clear: both;"></div>
				<div class="content">${entity.content}</div>

			</div>

			<!-- <div class="right-panel">
				<div class="notice-list">
					<div class="top">
						<div class="top-head">通知公告</div>
						<div class="top-more">
							<a href="#">更多&gt;&gt;</a>
						</div>
					</div>
					<div>
						<s:iterator value="listNoticeInfo" status="st">
							<div class="info-title">
								<a href="#"> <s:property value="title" /></a>
								<span style="float: right;"><s:date name="releaseDate" format="MM-dd" /></span>
								<div style="clear: both;"></div>
							</div>
						</s:iterator>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div class="timeline-list">
					<div class="top">
						<div class="top-head">时间轴</div>
					</div>
					<div class="timeline">
						<div class="line"></div>
						<div class="timeline-content">
							<div class="icon-success">
								<div class="icon-title">申</div>
							</div>
							<div class="msg">2004年12月21日申请加入中国共产党</div>
						</div>
					</div>
					<div class="timeline">
						<div class="line"></div>
						<div class="timeline-content">
							<div class="icon-success">
								<div class="icon-title">积</div>
							</div>
							<div class="msg"><span>通过考试成为积极分子</span></div>
						</div>
					</div>
					<div class="timeline">
						<div class="line"></div>
						<div class="timeline-content">
							<div class="icon-success">
								<div class="icon-title">章</div>
							</div>
							<div class="msg">2005年3月21日通过第一课时的考试</div>
						</div>
					</div>

				</div>
			</div>-->
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
	addTip("红旗飘飘公开课");
});
</script>

</html>