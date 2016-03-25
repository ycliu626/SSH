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
				<div class="my-progress-focus"></div>
				<div id="my-result" class="my-result"></div>

			</div>

			<div class="right">
				<div class="board">
					<div class="headline">课程进度</div>
					<div class="underline"></div>
					<!-- begin table -->
					<table class="lesson-table">
						<thead>
							<tr>
								<th>课程</th>
								<th>进度</th>
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
										<s:if test="learned==true">
											已学习
										</s:if>
										<s:else>
											未学习
										</s:else>
									</td>
								</tr>
							</s:iterator>
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