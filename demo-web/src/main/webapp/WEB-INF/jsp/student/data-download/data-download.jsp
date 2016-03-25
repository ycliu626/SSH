<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>资料下载</title>
<style>
.data-div{
	padding: 10px 30px;
}
.data-div .data-info{
	border-bottom: 1px dotted #666;
}
.data-div .data-info a{
	color: black;
}
.data-div .data-info .date{
	float: right;
	color: #666
}
</style>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="study clearfix">
			<div id="red-classics-list" class="red-classics">
				<div class="head">
					资料下载
					<span class="seperate-b"></span>
				</div>
<!-- 				<div id="dataTable">
				</div>
				<div class="feed-page">
					<ul class="pagination" id="data-page-ul"></ul>
				</div> -->
				<div class="data-div">
					<div class="data-info">
						<a href="${contextPath}/data-download/1111.zip">下载资料1</a><span class="date">2015-01-06</span>
					</div>
				</div>
				<div class="data-div">
					<div class="data-info">
						<a href="${contextPath}/data-download/下载资料2.docx">下载资料2</a><span class="date">2015-03-16</span>
					</div>
				</div>
				<div class="data-div">
					<div class="data-info">
						<a href="${contextPath}/data-download/下载资料3.xlsx">下载资料3</a><span class="date">2015-03-30</span>
					</div>
				</div>
				<div class="data-div">
					<div class="data-info">
						<a href="${contextPath}/data-download/下载资料4.pptx">下载资料4</a><span class="date">2015-04-10</span>
					</div>
				</div>

			</div>

			<div class="bottom" style="background-color: white;"></div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/data-download/data-download.js"></script>
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