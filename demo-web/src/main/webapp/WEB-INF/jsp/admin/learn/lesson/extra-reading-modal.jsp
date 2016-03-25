<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="modal fade" id="extra-readingModal" data-action-name="extra-reading" role="dialog">
        <div class="modal-dialog" style="width: 900px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">扩展阅读</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" action="extra-reading!addOrUpdate" method="post">
                        <input type="hidden" name="entity.lesson._id">
                        <input type="hidden" name="entity._id">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                <font style="color: red;">*</font>标题：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                <font style="color: red;">*</font>作者：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.author">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                <font style="color: red;">*</font>简介：
                            </label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="entity.description">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                <font style="color: red;">*</font>内容：
                            </label>
                            <div class="col-sm-8">
                                <textarea class="form-control" name="entity.content" style="width:700px;height:200px;visibility:hidden;" id="extraReadingContent"></textarea>
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
    <script>
        var extraReadingContent;
        KindEditor.ready(function (K) {
            extraReadingContent = K.create('textarea[id="extraReadingContent"]', {
                cssPath: "${contextPath}/bower_components/kindeditor-4.1.10/plugins/code/prettify.css",
                fileManagerJson: "${contextPath}/bower_components/kindeditor-4.1.10/jsp/file_manager_json.jsp",
                //是否允许浏览服务器已上传文件 默认值是：false
                //allowFileManager: true,
                uploadJson: "../common/kindeditor!kindeditorUpload.action?",
				formatUploadUrl: false,
                //若ajax提交无法获取kindedtor中textarea里的值,设置此项
                afterBlur: function () {
                    this.sync();
                }
            });
        });
    </script>