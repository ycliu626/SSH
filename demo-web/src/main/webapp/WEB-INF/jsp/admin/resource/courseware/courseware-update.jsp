<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>课件管理</title>
        <style type="text/css">
        #courseware {
            position: relative;
            width: 750px;
            height: 430px;
            border: 10px solid #fff;
            margin: 0 200px;
        }

        #courseware #pptImg {
            height: 400px;
            width: 500px;
        }

        #courseware .changeImg {
            position: absolute;
            top: 0px;
        }

        #courseware .changeImg #btn-left {
            width: 250px;
            height: 400px;
            cursor: url(../resources/img/student/btn_left.cur), auto;
            float: left;
        }

        #courseware .changeImg #btn-right {
            width: 250px;
            height: 400px;
            cursor: url(../resources/img/student/btn_right.cur), auto;
            float: left;
        }

        #courseware .page {
            width: 100%;
            position: absolute;
            clear: both;
            text-align: center;
            margin: -30px 80px;
        }
        </style>
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
                                    <b style="margin-left: 5px;">课件信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                        <font style="color: red;">*</font>课件名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入课件名称">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                        <font style="color: red;">*</font> 所属课程：
                                    </label>
                                    <div class="col-sm-5">
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
                                    <label class="col-sm-3 control-label"><font style="color: red;">*</font>课件描述：</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.description" value="${entity.description}" placeholder="请输入课件描述：">
                                    </div>
                                </div>
                                <div class="form-group" id="coursewareUploadKit">
                                    <label class="col-sm-3 control-label "><span class="star"></span><font style="color: red;">*</font>课件附件：</label>
                                    <div class="col-sm-9">
                                        <div class="col-sm-7" style="padding-left: 0;">
                                            <input type="file" class="form-control hidden" id="coursewareUpload" name="upload">
                                            <input type="text" class="form-control" name="attachmentZip" value="${entity.attachmentZip}" disabled>
                                        </div>
                                        <div class="col-sm-5">
                                            <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                            <a class="btn btn-primary" data-purpose="upload">上传</a>
                                        </div>
                                        <input type="hidden" name="entity.attachmentZip" value="${entity.attachmentZip}">
                                        <div id="courseware-attach-err-msg" class="col-sm-9"></div>
                                    </div>
                                </div>
                                <div id="courseware" style="display: none;">
                                    <img id="pptImg" src="">
                                    <div class="changeImg">
                                        <div id="btn-left"></div>
                                        <div id="btn-right"></div>
                                    </div>
                                    <div class="page">
                                        <span id="curr-page">1</span>/<span id="total-page">1</span>
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/resource/courseware/courseware-update.js"></script>
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>

            </html>
