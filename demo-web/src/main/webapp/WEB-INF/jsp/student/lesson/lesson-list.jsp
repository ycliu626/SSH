<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>课程中心</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="board">
			<div class="lesson-banner"></div>
			<table class="lesson-table">
			   <thead>
			      <tr>
			         	<th style="width: 80px">序号</th>
			         	<th style="width: 570px">课程</th>
			         	<th>学习</th>
			         	<th>测试</th>
			         	<th>学时</th>
			         	<th>最高成绩</th>
			      </tr>
			   </thead>
			   <tbody id="myApplyTable">
			   </tbody>
			   <tfoot>
					<tr>
						<td style="text-align: right; border: none;padding-right: 20px;" colspan="5">
							<ul class="pagination organ-page" id="page-ul" data-total-pages="${pageEntity.totalPages}" data-page-size="${pageEntity.pageSize}">
							</ul>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/lesson/lesson-list.js"></script>
<script type="text/html" id="myApplyTpl">
		{{each results as info}}
		    <tr>
				<td>{{info.lesson.sort}}</td>
				<td style="width:570px;">
                        <div class="cut-info" style="width:570px;" title="{{info.lesson.title}}">{{info.lesson.title}}</div>
                </td>
				<td><a href="lesson-study.action?lesson._id={{info.lesson._id}}">学习</a></td>
				{{if info.canTest==true}}
					<td><a href="exam!toTesting.action?lessonId={{info.lesson._id}}&examType=0" target="_blank">章节测试</a></td>
				{{else}}
					<td>章节测试</td>
				{{/if}}
				<td>{{info.lesson.hour}}</td>
				{{if info.maxResult!=null && info.maxResult!=""}}
				<td>{{info.maxResult}}分</td>
				{{else}}
					<td>无</td>
				{{/if}}
			</tr>
	    {{/each}}
</script>
</html>