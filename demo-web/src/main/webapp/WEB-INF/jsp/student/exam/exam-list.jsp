<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>考试中心</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="exam-board">
			<div class="exam-banner"></div>
			<div class="exam-body clearfix">
				<div class="chapter" id="myApplyTable">
					<div class="top-head">章节测试</div>
				</div>
				<div class="complete">
					<div class="top-head">综合测试</div>
					<div class="board">
						<form id="fzh" action="exam!toTesting.action" method="post" target="_blank">
							<input type="hidden" name="examType" value="1"/>
							<div id="zh-btn" class="btns-gray">点击进入</div>
						</form>
					</div>
				</div>
				<div class="focused">
					<div class="top-head">集中考试</div>
					<div class="board">
						<form id="fjz" action="exam!toTesting.action" method="post" target="_blank">
							<input type="hidden" name="examType" value="2"/>
							<div id="jz-btn" class="btns-gray">点击进入</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/exam/exam-list.js"></script>
<script type="text/html" id="myApplyTpl">
	{{each results as info}}
		<div class="oneItem">
			<div class="number">{{info.lesson.lessonNo}}</div>
			<div class="title">{{info.lesson.title}}</div>
			{{if info.canTest==true}}
				<form id="f{{info.lesson._id}}" action="exam!toTesting.action" method="post" target="_blank">
					<input type="hidden" name="lessonId" value="{{info.lesson._id}}"/>
					<!--0 章节测试 1 综合测试 2 集中测试-->
					<input type="hidden" name="examType" value="0"/>
					<div class="btns" onclick="f{{info.lesson._id}}.submit()">测试</div>
				</form>
			{{else}}
				<div class="btns btns-gray">测试</div>
			{{/if}}
		</div>
    {{/each}}
</script>
</html>