<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>支部特色活动查看</title>
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
                                    <b style="margin-left: 5px;">支部特色活动信息</b>
                                </div>
                                <!-- 分割线end -->
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>活动名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">${entity.title}</p>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>支部名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">${entity.branchName}</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 活动时间：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content"><s:date name="entity.activityDate" format="yyyy-MM-dd" />
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>活动地点：
                                    </label>
                                    <div class="col-sm-5">
                                        <p class="p-content">${entity.place}</p>
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
                <%@ include file="../../../student/footer.jsp"%>
            </div>

        </body>
        <%@include file="../../admin-js.jsp" %>

            </html>