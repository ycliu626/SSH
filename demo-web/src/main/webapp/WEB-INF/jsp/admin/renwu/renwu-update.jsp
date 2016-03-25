<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>革命人物管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="queryForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">革命人物信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}" />
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>标题：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.jcsjbt" value="${entity.jcsjbt}" placeholder="请输入标题">
                                    </div>
                                </div>
                                <div class="form-group" id="imageAttach">
                                    <label class="col-sm-2 control-label ">
                                        <font style="color: red;">*</font>图片：</label>
                                    <input type="hidden" name="entity.jcsjname" value="${entity.jcsjname}">
                                    <div class="col-sm-9">
                                        <div class="col-sm-7" style="padding-left: 0;">
                                            <input type="file" class="form-control hidden" id="upload" name="upload">
                                            <input type="text" class="form-control" name="attachementPath" value="${entity.jcsjname}" disabled>
                                        </div>
                                        <div class="col-sm-5">
                                            <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                            <a class="btn btn-primary" data-purpose="upload">上传</a>
                                        </div>
                                        <div id="attach-err-msg" class="col-sm-9"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 人物介绍：
                                    </label>
                                    <div class="col-sm-5">
                                        <textarea id="description" name="entity.jcsjjj" style="width:700px;height:200px;visibility:hidden;">${entity.jcsjjj}</textarea>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none;" id="imgDiv">
                                    <img id="imgShowSrc" height="150px" width="115px" src="" />
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-5 col-sm-2">
                                        <button class="btn btn-default" id="queryBtn">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%@ include file="../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/renwu/renwu-update.js"></script>
            <link href="${contextPath}/bower_components/kindeditor-4.1.10/themes/default/default.css" />
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/kindeditor-min.js"></script>
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/lang/zh_CN.js"></script>
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>
            <script>
            var editor1;
            KindEditor.ready(function(K) {
                editor1 = K.create('textarea[name="entity.jcsjjj"]', {
                    cssPath: "${contextPath}/bower_components/kindeditor-4.1.10/plugins/code/prettify.css",
                    uploadJson: "${contextPath}/bower_components/kindeditor-4.1.10/jsp/upload_json.jsp",
                    fileManagerJson: "${contextPath}/bower_components/kindeditor-4.1.10/jsp/file_manager_json.jsp",
                    //是否允许浏览服务器已上传文件 默认值是：false
                    //allowFileManager: true,
                    uploadJson: "../common/kindeditor!kindeditorUpload.action?",
                    formatUploadUrl: false,
                    //若ajax提交无法获取kindedtor中textarea里的值,设置此项
                    afterBlur: function() {
                        this.sync();
                    }
                });
            });
            </script>

            </html>
