<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>热点专题管理</title>
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
                                    <b style="margin-left: 5px;">热点专题信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}" />
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>标题：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入标题">
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font>链接：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.url" value="${entity.url}" placeholder="请输入链接地址">
                                    </div>
                                </div>
                                <div class="form-group" id="imageAttach">
                                    <label class="col-sm-2 control-label "><font style="color: red;">*</font>显示图片：</label>
                                    <input type="hidden" name="entity.attachment" value="${entity.attachment}">
                                    <div class="col-sm-9">
                                        <div class="col-sm-7" style="padding-left: 0;">
                                            <input type="file" class="form-control hidden" id="upload" name="upload">
                                            <input type="text" class="form-control" name="attachementPath" value="${entity.attachment}" disabled>
                                        </div>
                                        <div class="col-sm-5">
                                            <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                            <a class="btn btn-primary" data-purpose="upload">上传</a>
                                        </div>
                                        <div id="attach-err-msg" class="col-sm-9"></div>
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
                    <%@ include file="../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/hot/hot-update.js"></script>
            <link href="${contextPath}/bower_components/kindeditor-4.1.10/themes/default/default.css" />
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>

            </html>
