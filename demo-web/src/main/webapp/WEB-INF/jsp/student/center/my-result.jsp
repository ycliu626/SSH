<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>个人中心</title>
</head>
<body>
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="center-board clearfix">
			<div class="center-banner"></div>

			<div class="left">
				<div id="my-info" class="my-info"></div>
				<div id="my-pwd" class="my-pwd"></div>
				<div id="my-progress" class="my-progress"></div>
				<div class="my-result-focus"></div>

			</div>

			<div class="right">
				<div class="board">
					<div class="headline">个人成绩</div>
					<div class="underline"></div>
					<!-- begin table -->
					<table class="lesson-table">
						<thead>
							<tr>
								<th>课程</th>
								<th>最高成绩</th>
								<th>测试次数</th>
								<th>是否通过</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="voList" status="s">
							<s:if test="#s.odd">
								<tr class="row-one">
							</s:if>
							<s:else>
								<tr class="row-two">
							</s:else>
									<td><s:property value="lesson.title"/></td>
									<td>
										<s:if test="maxResult!=null">
											<s:property value="maxResult"/>分
										</s:if>
										<s:else>
											无
										</s:else>
									</td>
									<td><s:property value="count"/>次</td>
									<td>
										<s:if test="passed==true">
											通过
										</s:if>
										<s:else>
											未通过
										</s:else>
									</td>
								</tr>
							</s:iterator>

							<tr>
								<td>综合考试</td>
								<td>
										<s:if test="resultComplete.result!=-1">
											<s:property value="resultComplete.result"/>分
										</s:if>
										<s:else>
											无
										</s:else>
								</td>
								<td><s:property value="resultComplete.answerCount"/>次</td>
								<td>
										<s:if test="resultComplete.pass==true">
											通过
										</s:if>
										<s:else>
											未通过
										</s:else>
								</td>
							</tr>

							<tr>
								<td>集中考试</td>
								<td>
										<s:if test="resultFocused.result!=-1">
											<s:property value="resultFocused.result"/>分
										</s:if>
										<s:else>
											无
										</s:else>
								</td>
								<td><s:property value="resultFocused.answerCount"/>次</td>
								<td>
										<s:if test="resultFocused.pass==true">
											通过
										</s:if>
										<s:else>
											未通过
										</s:else>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- end table -->

				</div>
			</div>

		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/center/center.js"></script>
</html>