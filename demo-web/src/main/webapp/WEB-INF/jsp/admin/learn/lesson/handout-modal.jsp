<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="modal fade" id="handoutModal" data-action-name="handout"  role="dialog">
        <div class="modal-dialog" style="width: 900px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">上传讲义</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" action="handout!addOrUpdate" method="post">
                        <input type="hidden" name="entity.lesson._id">
                        <input type="hidden" name="entity._id">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                <font style="color: red;">*</font>讲义名称：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.title">
                            </div>
                        </div>
                        <!-- 						<div class="form-group" >
							<label class="col-sm-2 control-label">讲义描述：</label>
							<div class="col-sm-8">
								<input type="text"  class="form-control" name="entity.description" >
							</div>
						</div> -->
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                <font style="color: red;">*</font>讲义内容：
                            </label>
                            <div class="col-sm-8">
                                <textarea id="handoutContent" name="entity.content" style="width:700px;height:200px;visibility:hidden;"></textarea>
                            </div>
                        </div>
                        <div class="form-group" id="handoutUploadKit">
                            <label class="col-sm-2 control-label ">
                                <font style="color: red;">*</font>讲义附件：
                            </label>
                            <input type="hidden" name="entity.attachment">
                            <div class="col-sm-9">
                                <div class="col-sm-7" style="padding-left: 0;">
                                    <input type="file" class="form-control hidden" id="handoutUpload" name="upload">
                                    <input type="text" class="form-control" name="attachmentPath" readonly="readonly">
                                </div>
                                <div class="col-sm-5">
                                    <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                    <a class="btn btn-primary" data-purpose="upload">上传</a>
                                </div>
                                <div id="handout-attach-err-msg" class="col-sm-9"></div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default modal-confirm-btn">确认</button>
                </div>
            </div>
        </div>
    </div>
    <link href="${contextPath}/bower_components/kindeditor-4.1.10/themes/default/default.css" />
    <script src="${contextPath}/bower_components/kindeditor-4.1.10/kindeditor-min.js"></script>
    <script src="${contextPath}/bower_components/kindeditor-4.1.10/lang/zh_CN.js"></script>
    <script>
    var handoutContent;
    KindEditor.ready(function(K) {
        handoutContent = K.create('textarea[id="handoutContent"]', {
            cssPath: "${contextPath}/bower_components/kindeditor-4.1.10/plugins/code/prettify.css",
            fileManagerJson: "${contextPath}/bower_components/kindeditor-4.1.10/jsp/file_manager_json.jsp",
            //是否允许浏览服务器已上传文件 默认值是：false
            //allowFileManager: true,
            uploadJson: "../common/kindeditor!kindeditorUpload.action?",
			//formatUploadUrl: false,
            //若ajax提交无法获取kindedtor中textarea里的值,设置此项
            afterBlur: function() {
                this.sync();
            }
        });
    });
    </script>
