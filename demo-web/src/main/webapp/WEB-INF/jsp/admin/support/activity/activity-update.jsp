<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>支部特色活动管理</title>
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
                                    <b style="margin-left: 5px;">支部特色活动信息</b>
                                </div>
                                <!-- 分割线end -->
                                 <input type="hidden" name="entity._id" value="${entity._id}">
                                 <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">
                                <input type="hidden" name="entity.readTimes" value="${entity.readTimes}">
                                <input type="hidden" name="entity.commitUser._id" value="${entity.commitUser._id}">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>活动名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入活动名称">
                                    </div>
                                </div>
                                  <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 支部名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.branchName" placeholder="请输入支部名称" value="${entity.branchName}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 活动时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control mydate" readonly="readonly"  name="entity.activityDate"
                                        placeholder="请选择活动时间"
                                         value="<s:date name="entity.activityDate" format="yyyy-MM-dd"/>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>活动地点：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.place" value="${entity.place}" placeholder="请输入活动地点">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 宣传稿：
                                    </label>
                                    <div class="col-sm-5">
                                        <textarea id="description" name="entity.content" style="width:700px;height:200px;visibility:hidden;">${entity.content}</textarea>
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
                <%@ include file="../../../student/footer.jsp"%>
            </div>

        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/activity/activity-update.js"></script>
            <link href="${contextPath}/bower_components/kindeditor-4.1.10/themes/default/default.css" />
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/kindeditor-min.js"></script>
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/lang/zh_CN.js"></script>
            <script>
                var editor1;
                KindEditor.ready(function (K) {
                    editor1 = K.create('textarea[name="entity.content"]', {
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