<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>学员管理</title>
<style>
.p-content{
	margin: 0 0 0px;
	padding: 6px 12px;
}
</style>
</head>
<body>

	<div class="container">
		<%@include file="../../admin-nav.jsp"%>

		<div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
		   <div class="panel-body">

				<form class="form-horizontal" role="form" onsubmit="return false">
					<!-- 分割线begin -->
					<div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
						<span class="glyphicon glyphicon-user"></span>
						<b style="margin-left: 5px;">基本信息</b>
					</div>
					<!-- 分割线end -->
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	学号：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${baseStudents.studentPin}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	姓名：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${baseStudents.name}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	身份证号：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${baseStudents.cardNo}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	性别：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
							<s:if test="baseStudents.gender==0">男</s:if>
							<s:if test="baseStudents.gender==1">女</s:if>
						</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	民族：
				      </label>
				      <div class="col-sm-5">
      					<s:iterator value="dictNationList">
      							<s:if test="baseStudents.nation==id">
      								<p class="p-content"><s:property value="value"/></p>
      							</s:if>
      					</s:iterator>
				      </div>
				   </div>
<%-- 				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	身份：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content">${baseStudents.shenfen}</p>
				      </div>
				   </div> --%>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	入学时间：
				      </label>
				      <div class="col-sm-4">
					      <p class="p-content">${baseStudents.entryDate}</p>
			      		</div>
				      </div>
					   <div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	学院：
					      </label>
					      <div class="col-sm-5">
								<s:iterator value="dictCollegeList">
		      							<s:if test="baseStudents.college==id">
		      								<p class="p-content"><s:property value="value"/></p>
		      							</s:if>
		      					</s:iterator>
					      </div>
					   </div>
						<div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	班级：
					      </label>
					      <div class="col-sm-5">
					      	<p class="p-content">${baseStudents.classes}</p>
					      </div>
					   </div>
						<div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	专业：
					      </label>
					      <div class="col-sm-5">
					      	<p class="p-content">${baseStudents.specialty}</p>
					      </div>
					   </div>
						<div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	联系电话：
					      </label>
					      <div class="col-sm-5">
					      	<p class="p-content">${baseStudents.mobile}</p>
					      </div>
					   </div>
						 <div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	学员类型：
					      </label>
					      <div class="col-sm-5">
					      	<s:if test="baseStudents.type==0"><p class="p-content">学生</p></s:if>
					      	<s:if test="baseStudents.type==1"><p class="p-content">教职工</p></s:if>
					      </div>
					   </div>
					  <div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	导师：
					      </label>
					      <div class="col-sm-5">
					      	<p class="p-content">${baseStudents.mentors}</p>
					      </div>
					   </div>

					<!-- 分割线begin -->
					<div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
						<span class="glyphicon glyphicon-flag"></span>
						<b style="margin-left: 5px;">入党信息</b>
					</div>
					<!-- 分割线end -->
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	党课学期：
				      </label>
				      <div class="col-sm-5">
			      			<s:iterator value="periodList">
	      							<s:if test="baseStudents.periodId==_id">
	      								<p class="p-content"><s:property value="name"/></p>
	      							</s:if>
	      					</s:iterator>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	党课班级：
				      </label>
				      <div class="col-sm-5">
			      			<s:iterator value="classesList">
	      							<s:if test="baseStudents.partyClassId==_id">
	      								<p class="p-content"><s:property value="name"/></p>
	      							</s:if>
	      					</s:iterator>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	所在支部：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${baseStudents.branchName}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	申请入党时间：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
				      		<s:date name="baseStudents.applyTime" format="yyyy-MM-dd"/>
				      	</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-3 col-sm-offset-1 control-label">
				     	确定积极分子时间：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
				      		<s:date name="baseStudents.activistTime" format="yyyy-MM-dd"/>
				      	</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-3 col-sm-offset-1 control-label">
				     	预备党员时间：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
				      		<s:date name="baseStudents.preTime" format="yyyy-MM-dd"/>
				      	</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	入党联系人：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${baseStudents.contacts}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-3 col-sm-offset-1 control-label">
				     	发展大会召开时间：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
				      		<s:date name="baseStudents.developMeetingTime" format="yyyy-MM-dd"/>
				      	</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	转正时间：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
				      		<s:date name="baseStudents.positiveTime" format="yyyy-MM-dd"/>
				      	</p>
				      </div>
				   </div>

					<!-- 分割线begin -->
					<div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
						<span class="glyphicon glyphicon-tags"></span>
						<b style="margin-left: 5px;">入党历程</b>
					</div>
					<!-- 分割线end -->
					<table class="join-table">
						<s:iterator value="baseStudents.joinList" status="js">
						<tbody  class="under-line">
							<tr>
								<td rowspan="${fn:length(childList) }" <s:if test="finished==true">style="color:green;"</s:if><s:else>style="color:gray;"</s:else>>
									${name }
								</td>
									<s:iterator value="childList" status="s">
										<s:if test="#s.last">
											<td style="padding-bottom: 20px;<s:if test="finished==true">color:green;</s:if><s:else>color:gray;</s:else>">
										</s:if>
										<s:else>
										<td <s:if test="finished==true">style="color:green;"</s:if><s:else>style="color:gray;"</s:else>>
										</s:else>
											${name}
										</td>
							</tr>
									</s:iterator>
							</tbody>
						</s:iterator>
					</table>

				</form>

		   </div>
		</div>
		<%@ include file="../../../student/footer.jsp"%>
	</div>

</body>
<%@include file="../../admin-js.jsp"%>
</html>