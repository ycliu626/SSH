<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<title>首页</title>
</head>
<body>
	<div class="container">
		<%@ include file="student-nav.jsp"%>

		<div class="info-board clearfix">
			<div class="info-wrapper">
				<div class="student-info clearfix">
					<div class="top">
					<div class="top-head">个人信息</div>
				</div>
					<div class="period-time">党课学期时间：<span style="color: red;">${periodMsg}</span></div>
					<div class="period-time">党课学期：${periodName}，党课班级：${classesName}</div>
					<div class="student-name">
						${student.name}&nbsp;&nbsp;同学你好，
						你的学号为：${student.studentPin}
					</div>
					<div class="student-name">
						所在学院：
						<s:iterator value="dictCollegeList">
							<s:if test="student.college==id">
								<s:property value="value"/>
							</s:if>
						</s:iterator>
						，所属专业：${student.specialty}
						，${student.classes}班
					</div>
					<div class="study-process">
						<div>学习进度</div>
						<div class="progress progress-striped active" style="margin:10px;">
						   <div class="progress-bar progress-bar-success" role="progressbar"
						      aria-valuenow="${periodBarValue }" aria-valuemin="0" aria-valuemax="100"
						      style="width: ${periodBarValue }%;">
						   </div>
						</div>
						<div>已学习<span style="color: red;">${haveHour }</span>学时/需学习<span style="color: red;">${needHour }</span>学时</div>
					</div>
				</div>

				<div class="my-link">
					<a href="lesson">
						<img src="${contextPath}/resources/img/student/ilearn.jpg">
					</a>
					<a href="exam">
						<img src="${contextPath}/resources/img/student/iexam.jpg">
					</a>
					<a href="center!myResult">
						<img src="${contextPath}/resources/img/student/iresult.jpg">
					</a>
				</div>

				<div class="my-link">
					<a class="a2" href="red-classics">
						<img src="${contextPath}/resources/img/student/red-classics.jpg">
					</a>
					<a class="a2" href="data-download">
						<img src="${contextPath}/resources/img/student/data-download.jpg">
					</a>
				</div>


				<div>
					<div class="lesson-list">
						<div class="top">
							<div class="top-head">热门课程</div>
							<div class="top-more">
								<a href="lesson">更多&gt;&gt;</a>
							</div>
						</div>
						<table class="lesson-table">
						   <thead>
						      <tr>
						         	<!-- <th style="width: 80px">序号</th> -->
						         	<th  style="width: 500px">课程</th>
						         	<th>学习</th>
						         	<th>学时</th>
						         	<!-- <th>最高成绩</th> -->
						      </tr>
						   </thead>
						   <tbody>
						   	<s:iterator value="page.results">
						   		<tr>
									<%-- <td><s:property value="lesson.sort"/></td> --%>
									<td style="width:500px;">
										<div class="cut-info" style="width:500px;"
										 title="<s:property value="lesson.title"/>"><s:property value="lesson.title"/></div>
									</td>
									
									<td><a href="lesson-study.action?lesson._id=${lesson._id}">学习</a></td>
									<td>
										<s:property value="lesson.hour"/>
									</td>
<%-- 									<td>
										<s:if test="maxResult!=null && maxResult!=''">
											<fmt:formatNumber value="${maxResult}" pattern="0"/>分
										</s:if>
										<s:else>无</s:else>
									</td> --%>
								</tr>
						   	</s:iterator>
						   </tbody>
						</table>
						<div style="clear: both;"></div>
					</div>
				</div>
			</div>

			<div class="right-panel">
				<%@ include file="notice-right.jsp"%>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

</body>
<%@include file="student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/home.js"></script>
</html>