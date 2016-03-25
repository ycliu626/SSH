<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>通知公告管理</title>
        <style>
        .p-content {
            margin: 0 0 0px;
            padding: 6px 12px;
        }
        </style>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">通知公告信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>标题：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">${entity.title}</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>接收对象：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">
                                            <s:if test="entity.scope==0">本院</s:if>
                                            <s:if test="entity.scope==1">全校</s:if>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 开始发布时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">
                                            <s:date name="entity.startDate" format="yyyy-MM-dd" />
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 结束发布时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">
                                            <s:date name="entity.endDate" format="yyyy-MM-dd" />
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 内容：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">${entity.content}</p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>

            </html>
