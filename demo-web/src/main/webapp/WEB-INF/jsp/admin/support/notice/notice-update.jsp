<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>通知公告管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="noticeForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">通知公告信息</b>
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
                                        <font style="color: red;">*</font>接收对象：
                                    </label>
                                    <div class="col-sm-5">
                                       <select id="scope" class="form-control" name="entity.scope">
                                       		<s:if test="#session.loginUser.type<=1">
                                       			<option value="1" <s:if test="entity.scope==1">selected="selected"</s:if>>全校</option>
                                       		</s:if>
                                       		<s:else>
	                                       		<option value="0" <s:if test="entity.scope==0">selected="selected"</s:if>>本院</option>
	                                            <option value="1" <s:if test="entity.scope==1">selected="selected"</s:if>>全校</option>
                                       		</s:else>

                                            <!-- <option value="0" <s:if test="entity.type==0">selected="selected"</s:if>>系统管理员</option> -->
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 开始发布时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control mydate" readonly="readonly"  name="entity.startDate"
                                        placeholder="请选择开始发布时间"
                                         value="<s:date name="entity.startDate" format="yyyy-MM-dd"/>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 结束发布时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control mydate" readonly="readonly"  name="entity.endDate"
                                        placeholder="请选择结束发布时间"
                                         value="<s:date name="entity.endDate" format="yyyy-MM-dd"/>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">
                                        <font style="color: red;">*</font> 内容：
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
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/admin/support/notice/notice-update.js"></script>
            <link href="${contextPath}/bower_components/kindeditor-4.1.10/themes/default/default.css" />
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/kindeditor-min.js"></script>
            <script src="${contextPath}/bower_components/kindeditor-4.1.10/lang/zh_CN.js"></script>
            <script>
            var editor1;
            KindEditor.ready(function(K) {
                editor1 = K.create('textarea[name="entity.content"]', {
                    cssPath: "${contextPath}/bower_components/kindeditor-4.1.10/plugins/code/prettify.css",
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
