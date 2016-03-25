<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>入党过程管理</title>
        <style>
		.info-div{
			border: 1px solid #d2d2d2;
			margin-bottom: 20px;
		}
		.info-div .title{
			font-size: 16px;
			font-weight: normal;
			color: black;
			padding-left: 30px;
			min-height: 45px;
			background-color: #eaeaea;
			line-height: 45px;
			border-bottom: 1px solid #d2d2d2;
		}
		.info-div .child{
			font-size: 14px;
			font-weight: normal;
			color: black;
			padding-left: 30px;
			min-height: 45px;
			line-height: 45px;
			border-bottom: 1px dotted #d2d2d2;
		}
		.info-div .child:last-child{
			border: 0px;
		}
		.btn-add{
			float: right;
			margin: 5px;
		}
		</style>

        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <div style="padding:10px;">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#processModal">新增过程</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 20px;">
                                    <div class="col-sm-12">
										<div id="myApplyTable">
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

               <!-- 总过程模态框（Modal） -->
				<div class="modal fade" id="processModal" tabindex="-1" role="dialog"
				   aria-labelledby="myModalLabel" aria-hidden="true">
				   <div class="modal-dialog">
				      <div class="modal-content">
				         <div class="modal-header">
				            <button type="button" class="close"
				               data-dismiss="modal" aria-hidden="true">&times;
				            </button>
				            <h4 class="modal-title" id="myModalLabel">
				               过程信息
				            </h4>
				         </div>
				         <div class="modal-body">
				            <form id="processForm" class="form-horizontal" method="post">
								<input type="hidden" name="entity._id">
		                        <div class="form-group">
		                            <label class="col-sm-3 control-label "><font style="color: red;">*</font>名称：</label>
		                            <div class="col-sm-9">
		                                <div class="col-sm-7" style="padding-left: 0;">
		                                    <input type="text" class="form-control" name="entity.name">
		                                </div>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-sm-3 control-label "><font style="color: red;">*</font>排序：</label>
		                            <div class="col-sm-9">
		                                <div class="col-sm-7" style="padding-left: 0;">
		                                    <input type="text" class="form-control" name="entity.sort">
		                                </div>
		                                <div class="col-sm-5">
		                                    <a class="btn btn-primary" id="subBtn">确定</a>
		                                </div>
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
				<!-- 步骤模态框（Modal） -->
				<div class="modal fade" id="stepModal" tabindex="-1" role="dialog"
				   aria-labelledby="myModalLabel" aria-hidden="true">
				   <div class="modal-dialog">
				      <div class="modal-content">
				         <div class="modal-header">
				            <button type="button" class="close"
				               data-dismiss="modal" aria-hidden="true">&times;
				            </button>
				            <h4 class="modal-title">
				               步骤信息
				            </h4>
				         </div>
				         <div class="modal-body">
				            <form id="stepForm" class="form-horizontal" method="post">
								<input type="hidden" id="addOrUpdate">
								<input type="hidden" name="parentId">
								<input type="hidden" name="entity._id">
		                        <div class="form-group">
		                            <label class="col-sm-3 control-label "><font style="color: red;">*</font>名称：</label>
		                            <div class="col-sm-9">
		                                <div class="col-sm-7" style="padding-left: 0;">
		                                    <input type="text" class="form-control" name="entity.name">
		                                </div>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-sm-3 control-label "><font style="color: red;">*</font>排序：</label>
		                            <div class="col-sm-9">
		                                <div class="col-sm-7" style="padding-left: 0;">
		                                    <input type="text" class="form-control" name="entity.sort">
		                                </div>
		                                <div class="col-sm-5">
		                                    <a class="btn btn-primary" id="subStepBtn">确定</a>
		                                </div>
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
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/join-process/base-join.js"></script>
            <script type="text/html" id="myApplyTpl">
                {{each results as info}}
                	<div class="info-div">
						<div class="title">
							<span>{{info.name}}</span>
							<button type="button" class="btn btn-default btn-add" onclick="addStep(this)">
								<input type="hidden" value="{{info._id}}"/>添加步骤
							</button>
							<div class="btn-group btn-add" style="margin-right:30px;">
                                <button type="button" class="btn btn-primary" onclick="updateModal(this)">
								<input type="hidden" name="id" value="{{info._id}}"/>
								<input type="hidden" name="name" value="{{info.name}}"/>
								<input type="hidden" name="sort" value="{{info.sort}}"/>
                                修改
                                </button>
                                <button type="button" class="btn btn-primary" onclick="doDelete(this)">
                                	<input type="hidden" name="id" value="{{info._id}}"/>
                                	删除
                                </button>
                            </div>
						</div>
						{{each info.childList as child}}
							<div class="child">
							<span>{{child.name}}</span>
							<button type="button" class="btn btn-default btn-add" onclick="deleteStep(this)">
								<input type="hidden" name="pid" value="{{info._id}}"/>
								<input type="hidden" name="myid" value="{{child._id}}"/>
								删除
							</button>
							<button type="button" class="btn btn-default btn-add" onclick="updateStep(this)">
								<input type="hidden" name="pid" value="{{info._id}}"/>
								<input type="hidden" name="myid" value="{{child._id}}"/>
								<input type="hidden" name="name" value="{{child.name}}"/>
								<input type="hidden" name="sort" value="{{child.sort}}"/>
								修改
							</button>
							</div>

						{{/each}}
					</div>
                {{/each}}
            </script>

            </html>
