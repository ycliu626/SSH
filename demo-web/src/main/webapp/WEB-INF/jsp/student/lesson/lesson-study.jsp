<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>课程中心</title>
<style type="text/css">
.vjs-default-skin .vjs-big-play-button {
    left: 285px;
    top: 160px;
}
</style>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<input type="hidden" name="lesson._id" value="${lesson._id }"/>
		<input type="hidden" name="lesson.sort" value="${lesson.sort }"/>
		<div class="study clearfix">
			<div class="title">${lesson.lessonNo }&nbsp;&nbsp;${lesson.title }</div>
			<div class="left">
				<div class="item">课程学习
					<div id="left-courseware" class="subItem hand">课件学习</div>
					<div id="left-handout" class="subItem hand">讲义学习</div>
					<div id="left-nice-list" class="subItem hand">精品课程</div>
					<div id="left-discuss-thinking" class="subItem hand">讨论思考</div>
				</div>
				<div id="left-reading" class="item hand">
					指定阅读
				</div>
				<div id="left-extreading" class="item hand">
					扩展阅读
				</div>
				<div class="item">
					影像资料
					<div id="left-video-list" class="subItem hand">视频资料</div>
					<!-- <div id="left-audio-list" class="subItem hand">红色歌曲</div> -->
				</div>
				<div id="test-disable" class="test-disable"></div>
				<form id="f" action="exam!toTesting.action" method="post" target="_blank">
					<input type="hidden" name="lessonId" value="${lesson._id }"/>
					<!--0 章节测试 1 综合测试 2 集中测试-->
					<input type="hidden" name="examType" value="0"/>
					<div id="test" class="test" onclick="f.submit()"></div>
				</form>
				<div class="prev-lesson"></div>
				<div class="next-lesson"></div>
			</div>
			<div class="right">
				<div id="courseware-list" style="display: none;">
					<div class="head">
						课件学习
						<span class="seperate-b"></span>
					</div>
					<div class="reading-table-div">
						<table class="reading-table">
							<thead>
								<tr>
									<th>标题</th>
								</tr>
							</thead>
							<tbody id="coursewareTable">
							</tbody>
							<tfoot>
								<tr>
									<td style="text-align: right;padding-right: 20px;">
										<ul class="pagination" id="courseware-page-ul">
										</ul>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>

				<div id="courseware" style="display: none;">
					<div class="title"></div>
					<div class="showImg">
						<img id="pptImg" src="">
						<div class="changeImg">
							<div id="btn-left"></div>
							<div id="btn-right"></div>
						</div>
						<div class="page">
							<span id="curr-page">1</span>/<span id="total-page">1</span>
						</div>
					</div>
					<div class="desc-title">课件描述</div>
					<div class="desc" style="width: 750px;">
						<p style="text-indent: 2em;padding: 0 20px;"></p>
					</div>

				</div>

				<div id="handout-list" style="display: none;">
					<div class="head">
						讲义学习
						<span class="seperate-b"></span>
					</div>
					<div class="reading-table-div">
						<table class="reading-table">
							<thead>
								<tr>
									<th>标题</th>
								</tr>
							</thead>
							<tbody id="handoutTable">
							</tbody>
							<tfoot>
								<tr>
									<td style="text-align: right;padding-right: 20px;">
										<ul class="pagination" id="handout-page-ul">
										</ul>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>

				<div id="handout" style="display: none;">
					<div class="head">
						讲义学习
						<span class="seperate-b"></span>
					</div>
					<div class="title"></div>
					<div class="content"></div>
					<div class="down">
						<div class="grey-line"></div>
						<div class="download"></div>
					</div>
				</div>

				<div id="nice-list" style="display: none;">
					<div class="head">
						精品课程
						<span class="seperate-b"></span>
					</div>
					<div id="niceTable">
					</div>
					<div class="feed-page">
						<ul class="pagination" id="nice-page-ul"></ul>
					</div>
				</div>

				<div id="discuss-thinking" style="display: none;">
					<div class="head">
						讨论思考
						<span class="seperate-b"></span>
					</div>
					<div class="content"></div>
				</div>

				<div id="reading-list" style="display: none;">
					<div class="head">
						指定阅读
						<span class="seperate-b"></span>
					</div>
					<div class="reading-table-div">
						<table class="reading-table">
							<thead>
								<tr>
									<th>标题</th>
									<th>作者</th>
								</tr>
							</thead>
							<tbody id="readingTable">
							</tbody>
							<tfoot>
								<tr>
									<td style="text-align: right;padding-right: 20px;" colspan="2">
										<ul class="pagination" id="reading-page-ul">
										</ul>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>

				<div id="reading" style="display: none;">
					<div class="head">
						指定阅读
						<span class="seperate-b"></span>
					</div>
					<div class="title"></div>
					<div class="author"></div>
					<div class="description"></div>
					<div class="content"></div>
				</div>

				<div id="extreading-list" style="display: none;">
					<div class="head">
						扩展阅读
						<span class="seperate-b"></span>
					</div>
					<div class="reading-table-div">
						<table class="reading-table">
							<thead>
								<tr>
									<th>标题</th>
									<th>作者</th>
								</tr>
							</thead>
							<tbody id="extreadingTable">
							</tbody>
							<tfoot>
								<tr>
									<td style="text-align: right;padding-right: 20px;" colspan="2">
										<ul class="pagination" id="extreading-page-ul">
										</ul>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
				<div id="video-list" style="display: none;">
					<div class="head">
						视频资料
						<span class="seperate-b"></span>
					</div>
					<div id="videoTable">
					</div>
					<div class="feed-page">
						<ul class="pagination" id="video-page-ul"></ul>
					</div>
				</div>

				<div id="video-play" style="display: none;">
					<div class="head">
						视频播放
						<span class="seperate-b"></span>
					</div>
					<div class="title"></div>

					<div class="video-div">
						<video width="100%" height="400px" controls class="video-js vjs-default-skin" id="player">
							您的浏览器版本较低,请使用ie9及以上版本浏览器或谷歌内核浏览器观看
						</video>
					</div>
				</div>

			</div>
			<div class="bottom"></div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/lesson/lesson-study.js"></script>
<script type="text/html" id="coursewareTpl">
	{{each results as info}}
	    <tr>
			<td><a data-id="{{info._id}}" onclick="courseware(this)">{{info.title}}</a></td>
		</tr>
	{{/each}}
</script>
<script type="text/html" id="handoutTpl">
	{{each results as info}}
	    <tr>
			<td><a data-id="{{info._id}}" onclick="handout(this)">{{info.title}}</a></td>
		</tr>
	{{/each}}
</script>
<script type="text/html" id="thinkingTpl">
	{{each results as info}}
	    <tr>
			<td><a data-id="{{info._id}}" onclick="discussThinking(this)">{{info.title}}</a></td>
		</tr>
	{{/each}}
</script>
<script type="text/html" id="readingTpl">

	{{each results as info}}
	    <tr>
			<td><a data-id="{{info._id}}" data-type="{{type}}" onclick="reading(this)">{{info.title}}</a></td>
			<td>{{info.author}}</td>
		</tr>
	{{/each}}
</script>
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
					<div class="speaker">
						<div class="name"><span>主讲人:</span>{{info.speaker}}</div>
						<div class="info">{{info.speakerInfo}}</div>
					</div>

					<div class="play" onclick="videoPlay(this,'video-list')">
						<div id="video-id" style="display:none;">{{info._id}}</div>
						<div id="video-name" style="display:none;">{{info.title}}</div>
						<div id="video-url" style="display:none;">{{info.attachment}}</div>
					</div>
					<div class="desc-div">
						<div class="desc-border">
							<div class="desc-title">影像简介</div>
							<div class="desc-info">{{info.description}}</div>
						</div>

					</div>
					<div style="clear: both"></div>
				</div>
			</div>
		</div>
	{{/each}}
</script>
<script type="text/html" id="niceTpl">
	{{each results as info}}
		<div class="video-div" >
			<div class="video-info">
				<div class="video-title">{{info.title}}</div>
				<div class="body">
					{{if info.img!=null && info.img!=""}}
						<img src="${contextPath}/{{info.img}}">
					{{else}}
						<img src="${contextPath}/resources/student/img/noimg.jpg">
					{{/if}}
					<div class="speaker">
						<div class="name"><span>主讲人:</span>{{info.speaker}}</div>
						<div class="info">{{info.speakerInfo}}</div>
					</div>

					<div class="play" onclick="videoPlay(this,'nice-list')">
						<div id="video-id" style="display:none;">{{info._id}}</div>
						<div id="video-name" style="display:none;">{{info.title}}</div>
						<div id="video-url" style="display:none;">{{info.attachment}}</div>
					</div>
					<div class="desc-div">
						<div class="desc-border">
							<div class="desc-title">影像简介</div>
							<div class="desc-info">{{info.description}}</div>
						</div>

					</div>
					<div style="clear: both"></div>
				</div>
			</div>
		</div>
	{{/each}}
</script>
</html>