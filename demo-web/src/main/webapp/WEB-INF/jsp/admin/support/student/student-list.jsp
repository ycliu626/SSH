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

			<div style="padding:10px;">
			  <form id="searchForm" onsubmit="return false">
				<div class="row">
					<div class="col-sm-4">
						<div class="input-group">
					         <span class="input-group-addon">姓名</span>
					         <input type="text" class="form-control" name="baseStudents.name" placeholder="姓名">
			      		</div>
					</div>
					<div class="col-sm-4">
						<div class="input-group">
					         <span class="input-group-addon">学号</span>
					         <input type="text" class="form-control" name="baseStudents.studentPin" placeholder="学号">
			      		</div>
					</div>
					<div class="col-sm-4">
						<button type="button" class="btn btn-primary" id="queryBtn">查询</button>
					</div>
				</div>
			</form>
				<div class="row"  style="margin-top: 20px;">
					<div class="col-sm-9">
						<div class="btn-group">
						  <button type="button" class="btn btn-primary" id="button_add">新增</button>
						  <button type="button" class="btn btn-primary" id="button_update">修改</button>
						  <button type="button" class="btn btn-primary" id="button_delete">删除</button>
						</div>
					</div>
					<div class="col-sm-3" style="text-align: right;">
						<div class="btn-group">
						  <button type="button" class="btn btn-primary"
						  onclick="javascript:window.open('${contextPath}/exceltemplate/学员信息模板.xlsx');">下载模板</button>
						  						  <button type="button" class="btn btn-primary"
						   data-toggle="modal" data-target="#importModal">导入</button>
						</div>
					</div>
				</div>

				<div  class="row"  style="margin-top: 20px;">
					<div class="col-sm-12">
						<table class="lesson-table">
						   <thead>
						      <tr>
						         	<th><input type="checkBox" class="check-all" /></th>
						         	<th>学号</th>
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

		<!-- 模态框（Modal） -->
		<div class="modal fade" id="importModal" tabindex="-1" role="dialog"
		   aria-labelledby="myModalLabel" aria-hidden="true">
		   <div class="modal-dialog">
		      <div class="modal-content">
		         <div class="modal-header">
		            <button type="button" class="close"
		               data-dismiss="modal" aria-hidden="true">&times;
		            </button>
		            <h4 class="modal-title" id="myModalLabel">
		               导入学生信息
		            </h4>
		         </div>
		         <div class="modal-body">
		            <form id="importForm" class="form-horizontal" method="post">

                        <div class="form-group">
                            <label class="col-sm-3 control-label "><font style="color: red;">*</font>附件：</label>
                            <div class="col-sm-9">
                                <div class="col-sm-7" style="padding-left: 0;">
                                    <input type="file" class="form-control hidden" id="upfile" name="upload">
                                    <input type="text" class="form-control" name="uploadFileName" disabled>
                                </div>
                                <div class="col-sm-5">
                                    <a class="btn btn-primary" onclick="$('#upfile').click()">浏览</a>
                                    <a class="btn btn-primary" id="btn-import">导入</a>
                                </div>
                                <input type="hidden" name="entity.attachmentZip">
                                <div id="courseware-attach-err-msg" class="col-sm-9"></div>
                            </div>
                        </div>
                    </form>
		         </div>
		         <div class="modal-footer">
		            <button type="button" class="btn btn-default"
		               data-dismiss="modal">关闭
		            </button>
		         </div>
		      </div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>

		<%@ include file="../../../student/footer.jsp"%>
	</div>

</body>
<%@include file="../../admin-js.jsp"%>
<script src="${contextPath}/js-lib/jqueryajaxfileupload.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/admin/support/student/base-student.js"></script>
<script type="text/html" id="myApplyTpl">
		{{each results as info}}
		    <tr>
				<td><input type='checkbox' class='child' name='hiddenId' value='{{info._id}}'/></td>
				<td>{{info.studentPin}}</td>
				<td><a href='javascript:void(0)' data-pku-id='{{info._id}}'>{{info.name}}</a></td>
				<td>{{if info.gender==0}}男{{else}}女{{/if}}</td>
				<td>{{info.classes}}</td>
				<td>{{info.mobile}}</td>
			</tr>
	    {{/each}}
</script>
</html>