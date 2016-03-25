<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>红色经典</title>
<style type="text/css">
.vjs-default-skin .vjs-big-play-button {
    left: 410px;
    top: 236px;
}
</style>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="study clearfix">
			<div id="red-classics-list" class="red-classics">
				<div class="head">
					红色经典
					<span class="seperate-b"></span>
				</div>
				<div id="videoTable">
				</div>
				<div class="feed-page">
					<ul class="pagination" id="video-page-ul"></ul>
				</div>
			</div>

			<div id="red-classics-play" class="red-classics-play"style="display:none;">
				<div class="head">
					视频播放
					<span class="seperate-b"></span>
				</div>
				<div class="title"></div>

				<div class="video-div">
					<video width="940px" height="550px" controls class="video-js vjs-default-skin" id="player">
						您的浏览器版本较低,请使用ie9及以上版本浏览器或谷歌内核浏览器观看
					</video>
				</div>

				<div id="back" class="red-btn">返回</div>
			</div>

			<div class="bottom" style="background-color: white;"></div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/red-classics/red-classics.js"></script>
<script type="text/html" id="videoTpl">
	{{each results as info}}
		<div class="video-div" >
			<div class="video-info">
				<div class="video-title">{{info.title}}</div>
				<div class="body">
				{{if info.img!=null && info.img!=""}}
					<img src="${contextPath}/{{info.img}}">
				{{else}}
					<img src="${contextPath}/resources/img/student/noimg.jpg">
				{{/if}}

					<div class="desc">{{info.description}}</div>
					<div class="play" onclick="videoPlay(this,'video-list')">
						<div id="video-name" style="display:none;">{{info.title}}</div>
						<div id="video-url" style="display:none;">{{info.attachment}}</div>
					</div>
					<div style="clear: both"></div>
				</div>
			</div>
		</div>
	{{/each}}
</script>
</html>