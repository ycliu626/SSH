<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>党课班级管理</title>
</head>
<body>

	<div class="container">
		<%@include file="../../admin-nav.jsp"%>
		<div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
		   <div class="panel-body">

			<div style="padding:10px;">
			  <form id="searchForm" onsubmit="return false">
				<div class="row">
					<div class="col-sm-4">
						<div class="input-group">
					         <span class="input-group-addon">班级</span>
					         <input type="text" class="form-control" name="entity.name" placeholder="班级">
			      		</div>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary" id="queryBtn">查询</button>
					</div>
				</div>
			</form>
				<div class="row"  style="margin-top: 20px;">
					<div class="col-sm-12">
						<div class="btn-group">
						  <button type="button" class="btn btn-primary" id="button_add">新增</button>
						  <button type="button" class="btn btn-primary" id="button_update">修改</button>
						  <button type="button" class="btn btn-primary" id="button_delete">删除</button>
						</div>
					</div>
				</div>

				<div  class="row"  style="margin-top: 20px;">
					<div class="col-sm-12">
						<table class="table">
						   <thead>
						      <tr>
						         	<th><input type="checkBox" class="check-all" /></th>
						         	<th>党课班级</th>
						         	<th>班级管理员</th>
						         	<th>联系电话</th>
						         	<th>操作</th>
						      </tr>
						   </thead>
						   <tbody id="myApplyTable">
						   </tbody>
						   <tfoot>
								<tr>
									<td style="text-align: right; border: none;" colspan="10">
										<ul class="pagination" id="page-ul" data-total-pages="${pageEntity.totalPages}" data-page-size="${pageEntity.pageSize}">
										</ul>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>

		   </div>
		</div>
	</div>

</body>
<%@include file="../../admin-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/admin/support/classes/base-classes.js"></script>
<script type="text/html" id="myApplyTpl">
		{{each results as info}}
		    <tr>
				<td><input type='checkbox' class='child' name='hiddenId' value='{{info._id}}'/></td>
				<td>{{info.name}}</td>
				<td>{{info.adminName}}</td>
				<td>{{info.adminTel}}</td>
				<td>
					<button type="button" class="btn btn-primary" onclick="javascript:location.href='classes-student.action?entity.partyClassId={{info._id}}'">查看学员</button>
				</td>
			</tr>
	    {{/each}}
</script>
</html>