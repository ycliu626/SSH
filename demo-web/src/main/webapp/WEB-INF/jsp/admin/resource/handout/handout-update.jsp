<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>讲义管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="activityForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">讲义管理</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                        <font style="color: red;">*</font>讲义名称：</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                        <font style="color: red;">*</font> 所属课程：
                                    </label>
                                    <div class="col-sm-7">
                                        <select class="form-control" name="entity.lesson._id">
                                            <s:iterator value="lessonList">
                                                <option value="<s:property value=" _id "/>" <s:if test="entity.lesson._id==_id">selected="selected"</s:if>>
                                                    <s:property value="title" />
                                                </option>
                                            </s:iterator>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                        <font style="color: red;">*</font>讲义内容：
                                    </label>
                                    <div class="col-sm-7">
                                        <textarea id="handoutContent" name="entity.content" style="width:700px;height:200px;visibility:hidden;" >${entity.content}</textarea>
                                    </div>
                                </div>
                                <div class="form-group" id="handoutUploadKit">
                                    <label class="col-sm-3 control-label ">
                                       <font style="color: red;">*</font> 讲义附件：
                                    </label>
                                    <input type="hidden" name="entity.attachment" value="${entity.attachment}">
                                    <div class="col-sm-7">
                                        <div class="col-sm-7" style="padding-left: 0;">
                                            <input type="file" class="form-control hidden" id="handoutUpload" name="upload">
                                            <input type="text" class="form-control" name="attachementPath" value="${entity.attachment}" disabled>
                                        </div>
                                        <div class="col-sm-5">
                                            <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                            <a class="btn btn-primary" data-purpose="upload">上传</a>
                                        </div>
                                        <div id="handout-attach-err-msg" class="col-sm-9"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-5 col-sm-2">
                                        <button class="btn btn-default" id="queryBtn">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <link href="${contextPath}/bower_components/kindeditor-4.1.10/themes/default/default.css" />
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/kindeditor-min.js"></script>
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/lang/zh_CN.js"></script>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/resource/handout/handout-update.js"></script>
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>
            <script>
                var handoutContent;
                KindEditor.ready(function (K) {
                    handoutContent = K.create('textarea[id="handoutContent"]', {
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

            </html>