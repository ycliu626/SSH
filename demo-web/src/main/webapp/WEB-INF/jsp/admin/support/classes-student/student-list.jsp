<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<title>查看学员</title>
</head>
<body>

	<div class="container">
		<%@include file="../../admin-nav.jsp"%>

		<div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
		   <div class="panel-body">

			<div style="padding:10px;">

				<div  class="row"  style="margin-top: 20px;">
					<div class="col-sm-12">
						<table class="lesson-table">
						   <thead>
						      <tr>
						         	<!-- <th><input type="checkBox" class="check-all" /></th> -->
						         	<th>姓名</th>
						         	<th>性别</th>
						         	<th>班级</th>
						         	<th>联系电话</th>
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
<script type="text/javascript" src="${contextPath}/resources/js/admin/support/classes-student/base-student.js"></script>
<script type="text/html" id="myApplyTpl">
		{{each results as info}}
		    <tr>
				<!--<td><input type='checkbox' class='child' name='hiddenId' value='{{info._id}}'/></td>-->
				<td><a href='javascript:void(0)' data-bupt-id='{{info._id}}'>{{info.name}}</a></td>
				<td>{{if info.gender==0}}男{{else}}女{{/if}}</td>
				<td>{{info.classes}}</td>
				<td>{{info.mobile}}</td>
			</tr>
	    {{/each}}
</script>
</html>