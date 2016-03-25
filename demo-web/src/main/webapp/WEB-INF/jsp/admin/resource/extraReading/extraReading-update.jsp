<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>扩展阅读管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:10px;">
                        <div class="panel-body">
                            <form id="activityForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">扩展阅读管理</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>标题：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 所属课程：
                                    </label>
                                    <div class="col-sm-8">
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
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>作者：
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" name="entity.author" value="${entity.author}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                    	<font style="color: red;">*</font>简介：
                                    </label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" name="entity.description" value="${entity.description}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                    	<font style="color: red;">*</font>内容：
                                    </label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" name="entity.content" style="width:700px;height:400px;visibility:hidden;">${entity.content}</textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-6 col-sm-3">
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/resource/extraReading/extraReading-update.js"></script>
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>
            <script>
                var content;
                KindEditor.ready(function (K) {
                	content = K.create('textarea[name="entity.content"]', {
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