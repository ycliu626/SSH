<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>学员管理</title>
</head>
<body>

	<div class="container">
		<%@include file="../../admin-nav.jsp"%>

		<div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
		   <div class="panel-body">

				<form id="studentForm" class="form-horizontal" role="form" onsubmit="return false">
					<!-- 分割线begin -->
					<div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
						<span class="glyphicon glyphicon-user"></span>
						<b style="margin-left: 5px;">基本信息</b>
					</div>
					<!-- 分割线end -->
					<input type="hidden" name="baseStudents._id" value="${baseStudents._id}">
					<input type="hidden" name="baseStudents.password" value="${baseStudents.password}">
					<input type="hidden" name="baseStudents.firstLogin" value="${baseStudents.firstLogin}">
					<input type="hidden" name="baseStudents.status" value="${baseStudents.status}">
					<input type="hidden" name="baseStudents.hour" value="${baseStudents.hour}">
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	<font style="color: red;">*</font>学号：
				      </label>
				      <div class="col-sm-5">
				         <input type="text" class="form-control"
				         	 name="baseStudents.studentPin" value="${baseStudents.studentPin}"
				         	 placeholder="请输入学号"
				          <s:if test="baseStudents.studentPin!=null">readonly="readonly"</s:if>>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 姓名：
				      </label>
				      <div class="col-sm-5">
				         <input type="text" class="form-control"
				         	 name="baseStudents.name" value="${baseStudents.name}"
				            placeholder="请输入姓名">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 身份证号：
				      </label>
				      <div class="col-sm-5">
				         <input type="text" class="form-control"
				         	 name="baseStudents.cardNo" value="${baseStudents.cardNo}"
				            placeholder="请输入身份证号">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 性别：
				      </label>
				      <div class="col-sm-5">
      					<select class="form-control" name="baseStudents.gender">
								<option value="0" <s:if test="baseStudents.gender==0">selected="selected"</s:if> >男</option>
								<option value="1"<s:if test="baseStudents.gender==1">selected="selected"</s:if>>女</option>
						</select>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 民族：
				      </label>
				      <div class="col-sm-5">
      					<select class="form-control" name="baseStudents.nation">
      						<s:iterator value="dictNationList">
      							<option value="<s:property value="id"/>"
      								<s:if test="baseStudents.nation==id">selected="selected"</s:if>
      							><s:property value="value"/></option>
      						</s:iterator>
						</select>
				      </div>
				   </div>
<%-- 				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 身份：
				      </label>
				      <div class="col-sm-5">
				         <input type="text" class="form-control"
				         	 name="baseStudents.shenfen" value="${baseStudents.shenfen}"
				            placeholder="请输入身份">
				      </div>
				   </div> --%>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 入学时间：
				      </label>
				      <div class="col-sm-5">
							<select class="form-control" name="baseStudents.entryDate"
								 data-entry-date="${baseStudents.entryDate}">
								 <option value="">--请选择--</option>
							</select>
			      		</div>
				      </div>
					   <div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	<font style="color: red;">*</font>学院：
					      </label>
					      <div class="col-sm-5">
	      					<select class="form-control" name="baseStudents.college">
	      						<s:iterator value="dictCollegeList">
	      							<option value="<s:property value="id"/>"
	      							<s:if test="baseStudents.college==id">selected="selected"</s:if>
	      							><s:property value="value"/></option>
	      						</s:iterator>
							</select>
					      </div>
					   </div>
						<div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	<font style="color: red;">*</font>班级：
					      </label>
					      <div class="col-sm-5">
					         <input type="text" class="form-control"
					         	 name="baseStudents.classes" value="${baseStudents.classes}"
					            placeholder="请输入班级">
					      </div>
					   </div>
						<div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	<font style="color: red;">*</font>专业：
					      </label>
					      <div class="col-sm-5">
					         <input type="text" class="form-control"
					         	 name="baseStudents.specialty" value="${baseStudents.specialty}"
					            placeholder="请输入专业">
					      </div>
					   </div>
						<div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	<font style="color: red;">*</font>联系电话：
					      </label>
					      <div class="col-sm-5">
					         <input type="text" class="form-control"
					         	 name="baseStudents.mobile" value="${baseStudents.mobile}"
					            placeholder="请输入联系电话">
					      </div>
					   </div>
						 <div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	<font style="color: red;">*</font>学员类型：
					      </label>
					      <div class="col-sm-5">
	      					<select class="form-control" name="baseStudents.type">
									<option value="0" <s:if test="baseStudents.type==0">selected="selected"</s:if>>学生</option>
									<option value="1" <s:if test="baseStudents.type==1">selected="selected"</s:if>>教职工</option>
							</select>
					      </div>
					   </div>
					   <div class="form-group">
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	导师：
					      </label>
					      <div class="col-sm-5">
					      <input type="text" class="form-control"
					         	 name="baseStudents.mentors" value="${baseStudents.mentors}"
					            placeholder="请输入导师">
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
				     	<font style="color: red;">*</font> 党课学期：
				      </label>
				      <div class="col-sm-5">
				            <select class="form-control" name="baseStudents.periodId" id="periodId">
				            	<option value="">无</option>
	      						<s:iterator value="periodList">
	      							<option value="<s:property value="_id"/>"
	      							<s:if test="baseStudents.periodId==_id">selected="selected"</s:if>
	      							><s:property value="name"/></option>
	      						</s:iterator>
							</select>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 党课班级：
				      </label>
				      <div class="col-sm-5">
				            <select class="form-control" name="baseStudents.partyClassId" id="partyClassId">
				            	<s:if test="baseStudents.partyClassId!=null">
					            	<s:iterator value="classesList">
		      							<option value="<s:property value="_id"/>"
		      							<s:if test="baseStudents.partyClassId==_id">selected="selected"</s:if>
		      							><s:property value="name"/></option>
		      						</s:iterator>
	      						</s:if>
	      						<s:else><option value="">无</option></s:else>
							</select>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 所在支部：
				      </label>
				      <div class="col-sm-5">
				         <input type="text" class="form-control"
				         	 name="baseStudents.branchName" value="${baseStudents.branchName}"
				            placeholder="请输入所在支部">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 申请入党时间：
				      </label>
				      <div class="col-sm-5">
				      	<input type="text" class="form-control mydate" readonly="readonly" name="baseStudents.applyTime"
				      	placeholder="请选择申请入党时间"
				      	 value="<s:date name="baseStudents.applyTime" format="yyyy-MM-dd"/>">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-3 col-sm-offset-1 control-label">
				     	<font style="color: red;">*</font> 确定积极分子时间：
				      </label>
				      <div class="col-sm-5">
				      	<input type="text" class="form-control mydate" readonly="readonly" name="baseStudents.activistTime"
				      	placeholder="请选择确定积极分子时间"
				      	 value="<s:date name="baseStudents.activistTime" format="yyyy-MM-dd"/>">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-3 col-sm-offset-1 control-label">
				     	预备党员时间：
				      </label>
				      <div class="col-sm-5">
				      	<input type="text" class="form-control mydate" readonly="readonly" name="baseStudents.preTime"
				      	placeholder="请选择预备党员时间"
				      	 value="<s:date name="baseStudents.preTime" format="yyyy-MM-dd"/>">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	入党联系人：
				      </label>
				      <div class="col-sm-5">
				         <input type="text" class="form-control"
				         placeholder="请输入入党联系人(两个人名)"
				         	 name="baseStudents.contacts" value="${baseStudents.contacts}">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-3 col-sm-offset-1 control-label">
				     	发展大会召开时间：
				      </label>
				      <div class="col-sm-5">
				      	<input type="text" class="form-control mydate" readonly="readonly" name="baseStudents.developMeetingTime"
				      	placeholder="请选择发展大会召开时间"
				      	 value="<s:date name="baseStudents.developMeetingTime" format="yyyy-MM-dd"/>">
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	转正时间：
				      </label>
				      <div class="col-sm-5">
				      	<input type="text" class="form-control mydate" readonly="readonly" name="baseStudents.positiveTime"
				      	placeholder="请选择转正时间"
				      	 value="<s:date name="baseStudents.positiveTime" format="yyyy-MM-dd"/>">
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
								<td rowspan="${fn:length(childList) }">
									<input type="hidden" name="baseStudents.joinList[${js.index }]._id" value="${_id }"/>
									<input type="checkbox" class="pcheck" name="baseStudents.joinList[${js.index }].finished" value="true"
									<s:if test="finished==true">checked="checked"</s:if> />
									${name }
								</td>
									<s:iterator value="childList" status="s">
										<s:if test="#s.last">
											<td style="padding-bottom: 20px;">
										</s:if>
										<s:else>
										<td>
										</s:else>
											<input type="hidden" name="baseStudents.joinList[${js.index }].childList[${s.index }]._id" value="${_id }"/>
											<input type="checkbox" class="childcheck" name="baseStudents.joinList[${js.index }].childList[${s.index }].finished" value="true"
											<s:if test="finished==true">checked="checked"</s:if>/>
											${name}
										</td>
							</tr>
									</s:iterator>
							</tbody>
						</s:iterator>
					</table>

				   <div class="form-group">
				      <div class="col-sm-offset-5 col-sm-2">
				         <button class="btn btn-default" id="queryBtn">提交</button>
				      </div>
				   </div>
				</form>

		   </div>
		</div>
		<%@ include file="../../../student/footer.jsp"%>
	</div>

</body>
<%@include file="../../admin-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/admin/support/student/student-update.js"></script>
</html>