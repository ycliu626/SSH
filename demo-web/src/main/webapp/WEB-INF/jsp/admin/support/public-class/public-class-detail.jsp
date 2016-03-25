<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>红旗飘飘公开课管理</title>
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
						<span class="glyphicon glyphicon-edit"></span>
						<b style="margin-left: 5px;">红旗飘飘公开课信息</b>
					</div>
					<!-- 分割线end -->
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	<font style="color: red;">*</font>标题：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content">${entity.title}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 召开时间：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content"><s:date name="entity.startDate" format="yyyy-MM-dd"/></p>
				      </div>
				   </div>
				   	<div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	<font style="color: red;">*</font>召开地点：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content">${entity.place}</p>
				      </div>
				   </div>
				   	<div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	<font style="color: red;">*</font>主讲人姓名：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content">${entity.speaker}</p>
				      </div>
				   </div>
				   	<div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	<font style="color: red;">*</font>参加人数：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content">${entity.number}</p>
				      </div>
				   </div>
				   	<div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				      	<font style="color: red;">*</font>会后意愿人数：
				      </label>
				      <div class="col-sm-5">
				         <p class="p-content">${entity.hopeNumber}</p>
				      </div>
				   </div>
				   <div class="form-group">
				      <label class="col-sm-2 col-sm-offset-2 control-label">
				     	<font style="color: red;">*</font> 内容：
				      </label>
				      <div class="col-sm-5">
				       <p class="p-content">${entity.content}</p>
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