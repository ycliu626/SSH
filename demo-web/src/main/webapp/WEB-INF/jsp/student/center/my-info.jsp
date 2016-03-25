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
				<div class="my-info-focus"></div>
				<div id="my-pwd" class="my-pwd"></div>
				<div id="my-progress" class="my-progress"></div>
				<div id="my-result" class="my-result"></div>

			</div>

			<div class="right">
				<div class="board">
					<div class="headline">基本信息</div>
					<div class="underline"></div>
					<!-- begin box-group -->
					<div class="box-group">
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">姓名:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">${student.name}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">学号:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">${student.studentPin}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">身份证号:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">${student.cardNo}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">性别:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">
									<s:if test="student.gender==0">男</s:if>
									<s:elseif test="student.gender==1">女</s:elseif>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">民族:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">
									<s:iterator value="dictNationList">
										<s:if test="student.nation==id">
											<p class="p-content"><s:property value="value"/></p>
										</s:if>
									</s:iterator>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">入学年份:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">${student.entryDate}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">学院:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">
									<s:iterator value="dictCollegeList">
										<s:if test="student.college==id">
											<s:property value="value"/>
										</s:if>
									</s:iterator>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">班级:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">${student.classes}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">专业:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">${student.specialty}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">导师:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">${student.mentors}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">联系电话:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">${student.mobile}</span>
							</div>
							<div style="clear: both;"></div>
						</div>

					</div>
					<!-- end box-group -->

					<div class="headline" style="margin-top: 50px;">入党信息</div>
					<div class="underline"></div>
					<!-- begin box-group -->
					<div class="box-group">
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">党课学期:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">
									<s:iterator value="periodList">
		      							<s:if test="student.periodId==_id">
		      								<s:property value="name"/>
		      							</s:if>
			      					</s:iterator>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">党课班级:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">
									<s:iterator value="classesList">
			      							<s:if test="student.partyClassId==_id">
			      								<s:property value="name"/>
			      							</s:if>
			      					</s:iterator>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">所在支部:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">${student.branchName}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">申请入党时间:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">
									<s:date name="student.applyTime" format="yyyy年MM月dd日"/>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">确定积极分子时间:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">
									<s:date name="student.activistTime" format="yyyy年MM月dd日"/>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">预备党员时间:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">
									<s:date name="student.preTime" format="yyyy年MM月dd日"/>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">入党联系人:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">${student.contacts}</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-two">
								<span class="box-title">发展大会召开时间:</span>
							</div>
							<div class="box-right-two">
								<span class="box-info">
									<s:date name="student.developMeetingTime" format="yyyy年MM月dd日"/>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>
						<div class="box">
							<div class="box-left-one">
								<span class="box-title">转正时间:</span>
							</div>
							<div class="box-right-one">
								<span class="box-info">
									<s:date name="student.positiveTime" format="yyyy年MM月dd日"/>
								</span>
							</div>
							<div style="clear: both;"></div>
						</div>

					</div>
					<!-- end box-group -->

					<div class="headline" style="margin-top: 50px;">个人入党历程</div>
					<div class="underline"></div>
					<!-- <div class="join-process"></div> -->

					<table class="student-join-table">
						<s:iterator value="student.joinList" status="js">
						<tbody  class="under-line">
							<tr>
								<td rowspan="${fn:length(childList) }">
								<s:if test="finished==true"><span class="finished">${name }</span></s:if>
								<s:else><span class="unfinished">${name }</span></s:else>
								</td>
									<s:iterator value="childList" status="s">
										<s:if test="#s.last">
											<td style="padding-bottom: 20px;">
										</s:if>
										<s:else>
										<td>
										</s:else>
											<s:if test="finished==true"><span class="finished">${name }</span></s:if>
											<s:else><span class="unfinished">${name }</span></s:else>
										</td>
							</tr>
									</s:iterator>
							</tbody>
						</s:iterator>
					</table>

				</div>
			</div>

		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/center/center.js"></script>
</html>