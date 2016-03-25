<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>用户管理</title>
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

				<form id="userForm" class="form-horizontal" role="form" onsubmit="return false">
					<!-- 分割线begin -->
					<div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
						<span class="glyphicon glyphicon-user"></span>
						<b style="margin-left: 5px;">用户信息</b>
					</div>
					<!-- 分割线end -->
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	账号（教职工号）：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${entity.name}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	昵称：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${entity.nickName}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	角色：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">
				      			<s:if test="entity.type==0">admin</s:if>
							<s:if test="entity.type==1">组织部管理员</s:if>
							<s:if test="entity.type==2">二级党委管理员</s:if>
						</p>
				      </div>
				   </div>
				   <div id="collegeDiv" class="form-group" <s:if test="entity==null||entity.type<2">style="display:none"</s:if>>
					      <label class="col-sm-2 col-sm-offset-2 control-label">
					     	学院：
					      </label>
					      <div class="col-sm-5">
	      						<s:iterator value="dictCollegeList">
	      							<s:if test="entity.college==id">
      									<p class="p-content"><s:property value="value"/></p>
      								</s:if>
	      						</s:iterator>
					      </div>
					   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	 邮箱：
				      </label>
				      <div class="col-sm-5">
				     	 <p class="p-content">${entity.email}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	 电话：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${entity.mobile}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	 备注：
				      </label>
				      <div class="col-sm-5">
				      	<p class="p-content">${entity.remark}</p>
				      </div>
				   </div>

				</form>

		   </div>
		</div>
		<%@ include file="../../../student/footer.jsp"%>
	</div>

</body>
<%@include file="../../admin-js.jsp"%>
</html>