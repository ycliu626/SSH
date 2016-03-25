<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>新用户管理</title>
</head>
<body>

	<div class="container">
		<%@include file="../../new-admin-nav.jsp"%>

		<div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
		   <div class="panel-body">

			<div style="padding:10px;">
			  <form id="searchForm" onsubmit="return false">
				<div class="row">
					<div class="col-sm-3">
						<div class="input-group">
					         <span class="input-group-addon">姓名</span>
					         <input type="text" class="form-control" name="entity.name" placeholder="姓名">
			      		</div>
					</div>
					<div class="col-sm-3">
			      		<div class="input-group">
					         <span class="input-group-addon">标题</span>
					         <input type="text" class="form-control" name="entity.title" placeholder="标题">
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
						<table class="lesson-table">
						   <thead>
						      <tr>
						         	<th><input type="checkBox" class="check-all" /></th>
						         	<th>申请时间</th>
						         	<th>姓名</th>
						         	<th>目的</th>
						         	<th>学院</th>
						         	<th>数据</th>
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
		<%@ include file="../../../student/footer.jsp"%>
	</div>

</body>
<%@include file="../../admin-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/admin/support/new-user/base-new-user.js"></script>
<script type="text/html" id="myApplyTpl">
		{{each results as info}}
		    <tr>
				<td><input type='checkbox' class='child' name='hiddenId' value='{{info._id}}'/></td>
                <td>{{info.date}}</td>
				<td><a href='javascript:void(0)' data-bupt-id='{{info._id}}'>{{info.name}}</a></td>
				<td>{{info.purpose}}</td>
				<td>{{info.collegeName}}</td>
				<td>
					{{if info.type==0}}T_JZG{{/if}}
					{{if info.type==1}}T_JZG2{{/if}}
				</td>
			</tr>
	    {{/each}}
</script>
</html>