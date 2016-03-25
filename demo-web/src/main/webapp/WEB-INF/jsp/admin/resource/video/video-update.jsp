<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>视频管理</title>
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
                                    <b style="margin-left: 5px;">视频管理</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                        <font style="color: red;">*</font>标题：
                                    </label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入标题">
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
                                    <label class="col-sm-3 control-label"><font color="red">*</font>类型：</label>
                                    <div class="col-sm-7">
                                        <select type="text" class="form-control" name="entity.type">
                                            <option value="0" <s:if test="entity.type==0"> selected="selected" </s:if>>视频</option>
                                            <option value="1" <s:if test="entity.type==1"> selected="selected" </s:if>>精品课程</option>
                                            <!-- <option value="2">歌曲</option> -->
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><font color="red">*</font> 主讲人：</label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="entity.speaker" value="${entity.speaker}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                    	<font style="color: red;">*</font>主讲人介绍：
                                    </label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="entity.speakerInfo" value="${entity.speakerInfo}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                    	<font style="color: red;">*</font>影像简介：
                                    </label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="entity.description" value="${entity.description}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">
                                    	<font style="color: red;">*</font>排序：
                                    </label>
                                    <div class="col-sm-7">
                                        <input type="text" class="form-control" name="entity.sort" value="${entity.sort}">
                                    </div>
                                </div>
                                <div class="form-group" id="imgUploadKit">
                                    <label class="col-sm-3 control-label ">
                                        <font style="color: red;">*</font>视频缩略图：</label>
                                    <input type="hidden" name="entity.img" value="${entity.img}">
                                    <div class="col-sm-9">
                                        <div class="col-sm-7" style="padding-left: 0;">
                                            <input type="file" class="form-control hidden" id="imgUpload" name="upload">
                                            <input type="text" class="form-control" name="imgAttachementPath" value="${entity.img}" disabled>
                                        </div>
                                        <div class="col-sm-5">
                                            <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                            <a class="btn btn-primary" data-purpose="upload">上传</a>
                                        </div>
                                        <div id="video-img-err-msg" class="col-sm-9"></div>
                                    </div>
                                </div>
                                <div class="form-group" id="videoUploadKit">
                                    <label class="col-sm-3 control-label ">
                                        <font style="color: red;">*</font>附件：</label>
                                    <input type="hidden" name="entity.attachment" value="${entity.attachment}">
                                    <div class="col-sm-9">
                                        <div class="col-sm-7" style="padding-left: 0;">
                                            <input type="file" class="form-control hidden" id="videoUpload" name="upload">
                                            <input type="text" class="form-control" name="attachementPath" value="${entity.attachment}" disabled>
                                        </div>
                                        <div class="col-sm-5">
                                            <a class="btn btn-primary" data-purpose="browse">浏览</a>
                                            <a class="btn btn-primary" data-purpose="upload">上传</a>
                                        </div>
                                        <div id="video-attach-err-msg" class="col-sm-9"></div>
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/resource/video/video-update.js"></script>
            <script src="${contextPath}/js-lib/jquery-pku-upload.js"></script>
            <script src="${contextPath}/js-lib/ajaxfileupload.js"></script>

            </html>
