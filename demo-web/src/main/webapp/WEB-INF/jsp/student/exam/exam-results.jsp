<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>课程中心</title>
</head>
<body>
<form>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<input type="hidden" id="lessonId" value="${lessonId}">
		<input type="hidden" id="examType" value="${examType}">

		<div class="testing-panel clearfix">
			<div id="examTitle" class="exam-title"></div>
			<div class="panel-left">
				<div id="myApplyTable"></div>
				<div class="changeQuestion">
					<div id="btn-left"></div>
					<div class="page">
						<span id="curr-page">1</span>/<span id="total-page">1</span>
					</div>
					<div id="btn-right"></div>
					<div style="clear: both;"></div>
				</div>
				<div id="submit" class="finishExam"></div>
			</div>
		</div>

		<%@ include file="../footer.jsp"%>
	</div>
</form>
</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/exam/exam-testing.js"></script>
<script type="text/html" id="myApplyTpl">
	<input type="hidden" name="lessonPaper.title" value="{{title}}">
	{{each questions as info index}}
		<div id="t{{index+1}}" class="oneQuestion" {{if index==0}}style="display:block;"{{/if}}>
			<div class="qType">
				{{if info.qusType==0}}
					单选题
				{{/if}}
				{{if info.qusType==1}}
					多选题
				{{/if}}
				{{if info.qusType==2}}
					判断题
				{{/if}}
			</div>
			<div class="qBody">
				<div class="qTitle">{{index+1}}.{{info.title}}</div>
				<input type="hidden" name="lessonPaper.questions[{{index}}]._id" value="{{info._id}}"/>
				<input type="hidden" name="lessonPaper.questions[{{index}}].title" value="{{info.title}}"/>
				<input type="hidden" name="lessonPaper.questions[{{index}}].qusType" value="{{info.qusType}}"/>
				<input type="hidden" name="lessonPaper.questions[{{index}}].level" value="{{info.level}}"/>

				{{if info.qusType==0}}
					{{each info.choices as ch idx}}
						{{if idx%2==0}}
							<div class="qItem1">
						{{else}}
							<div class="qItem2">
						{{/if}}
								<input type="radio" name="lessonPaper.questions[{{index}}].answer" value="{{ch}}"/>
								<input type="hidden" name="lessonPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}"/>
								<span>{{ch}}</span>
							</div>
					{{/each}}
				{{/if}}
				{{if info.qusType==1}}
					{{each info.choices as ch idx}}
						{{if idx%2==0}}
							<div class="qItem1">
						{{else}}
							<div class="qItem2">
						{{/if}}
								<input type="checkbox" name="lessonPaper.questions[{{index}}].answers[{{idx}}]" value="{{ch}}"/>
								<input type="hidden" name="lessonPaper.questions[{{index}}].choices[{{idx}}]" value="{{ch}}"/>
								<span>{{ch}}</span>
							</div>
					{{/each}}
				{{/if}}
				{{if info.qusType==2}}
						<div class="qItem1">
							<input type="radio" name="lessonPaper.questions[{{index}}].answer" value="true"/>
							<span>正确</span>
						</div>
						<div class="qItem2">
							<input type="radio" name="lessonPaper.questions[{{index}}].answer" value="false"/>
							<span>错误</span>
						</div>
				{{/if}}
					
			</div>
			
		</div>
    {{/each}}
</script>
</html>