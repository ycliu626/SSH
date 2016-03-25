<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="student/header.jsp" %>
<link rel="stylesheet" href="">
<title>视频</title>
<style type="text/css">
.vjs-default-skin .vjs-big-play-button {
    left: 410px;
    top: 236px;
}
</style>
</head>

<body>
	<div class="container">
		<%@ include file="home-nav.jsp"%>
		<div class="sub-main clearfix">
			<div class="cur-position"><span>当前位置：</span><span>视频</span></div>
			<div class="article-content">
				<div class="title">${entity.title}</div>
				<div class="publish-date"><s:date name="entity.startDate" format="yyyy-MM-dd" /></div>
				<div class="content">
					<div class="video-div">
						<video width="940px" height="550px" src="${entity.attachment}" controls class="video-js vjs-default-skin" id="player">
							您的浏览器版本较低,请使用ie9及以上版本浏览器或谷歌内核浏览器观看
						</video>
					</div>
					<p>${entity.content}</p>
				</div>
			</div>
		</div>
		<%@ include file="student/footer.jsp"%>
	</div>
	<%@include file="student/student-js.jsp"%>
	<script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
	<script src="${contextPath}/resources/js/home-nav.js"></script>
	<script>
		videojs('player');
	</script>
</body>
</html>
