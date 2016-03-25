<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>题库管理</title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">
                            <form id="queryForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">题库信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">
                                <input type="hidden" id="choicesSize" value="${fn:length(entity.choices)}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>题目：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入题目">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 课程：
                                    </label>
                                    <div class="col-sm-5">
                                        <select id="lesson-select" class="form-control" name="entity.lesson._id" data-lesson="${entity.lesson._id}">
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 难度：
                                    </label>
                                    <div class="col-sm-5">
                                        <select class="form-control" name="entity.level">
                                            <option value="0" <s:if test="entity.level==0">selected="selected"</s:if>>容易</option>
                                            <option value="1" <s:if test="entity.level==1">selected="selected"</s:if>>中等</option>
                                            <option value="2" <s:if test="entity.level==2">selected="selected"</s:if>>困难</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 类型：
                                    </label>
                                    <div class="col-sm-5">
                                        <select id="type-select" class="form-control" name="entity.qusType">
                                            <option value="0" <s:if test="entity.qusType==0">selected="selected"</s:if>>单选题</option>
                                            <option value="1" <s:if test="entity.qusType==1">selected="selected"</s:if>>多选题</option>
                                            <option value="2" <s:if test="entity.qusType==2">selected="selected"</s:if>>判断题</option>
                                        </select>
                                    </div>
                                </div>
                                <div id="rideo-div">
                                    <s:if test="entity==null||entity.qusType==2">
                                        <div class="form-group">
                                            <label class="col-sm-2 col-sm-offset-2 control-label">
                                                <font style="color: red;">*</font>选项1：
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" name="entity.choices[0]" value="${entity.choices[0]}" placeholder="请输入选项1" onkeyup="changeVal(this)">
                                            </div>
                                            <div class="col-sm-1">
                                                <input type="radio" name="entity.answer" checked="checked" style="margin-top: 10px;" /> 答案
                                            </div>
                                            <div class="col-sm-3">
                                                <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                                            </div>
                                        </div>
                                    </s:if>
                                    <s:elseif test="entity.qusType==0">
                                        <s:iterator value="entity.choices" var="a" status="s">
                                            <div class="form-group">
                                                <label class="col-sm-2 col-sm-offset-2 control-label">
                                                    <font style="color: red;">*</font>选项
                                                    <s:property value="#s.index+1" />：
                                                </label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" name="entity.choices[<s:property value="#s.index"/>]" value="<s:property value="#a"/>" placeholder="请输入选项<s:property value="#s.index+1"/>" onkeyup="changeVal(this)">
                                                </div>
                                                <div class="col-sm-1">
                                                    <input type="radio" name="entity.answer" value="<s:property value="#a"/>" <s:if test="entity.answer==#a">checked="checked"</s:if> style="margin-top: 10px;"/> 答案
                                                </div>
                                                <!--  最后一个添加按钮 -->
                                                <s:if test="#s.last==true&&#s.index>0">
                                                    <div class="col-sm-3">
                                                        <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                                                        <button type="button" class="btn btn-danger" onclick="delRideoItem()">删除选项</button>
                                                    </div>
                                                </s:if>
                                                <s:if test="#s.last==true&&#s.index==0">
                                                    <div class="col-sm-3">
                                                        <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                                                    </div>
                                                </s:if>
                                            </div>
                                        </s:iterator>
                                    </s:elseif>
                                    <s:elseif test="entity.qusType==1">
                                        <s:iterator value="entity.choices" var="a" status="s">
                                            <div class="form-group">
                                                <label class="col-sm-2 col-sm-offset-2 control-label">
                                                    <font style="color: red;">*</font>选项
                                                    <s:property value="#s.index+1" />：
                                                </label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" name="entity.choices[<s:property value="#s.index"/>]" value="<s:property value="#a"/>" placeholder="请输入选项<s:property value="#s.index+1"/>" onkeyup="changeVal(this)">
                                                </div>
                                                <div class="col-sm-1">
                                                    <input type="checkbox" name="entity.answers[<s:property value="#s.index "/>]" value="<s:property value="#a"/>" style="margin-top: 10px;" <s:iterator value="entity.answers" var="as">
                                                    <s:if test="#a==#as">checked="checked"</s:if>
                                        </s:iterator>
                                        /> 答案
                                        </div>
                                        <!--  最后一个添加按钮 -->
                                        <s:if test="#s.last==true&&#s.index>0">
                                            <div class="col-sm-3">
                                                <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                                                <button type="button" class="btn btn-danger" onclick="delRideoItem()">删除选项</button>
                                            </div>
                                        </s:if>
                                        <s:if test="#s.last==true&&#s.index==0">
                                            <div class="col-sm-3">
                                                <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                                            </div>
                                        </s:if>
                                        </div>
                                        </s:iterator>
                                    </s:elseif>
                                </div>
                                <div id="judge-div" style="display: none;">
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-offset-2 control-label">
                                            <font style="color: red;">*</font>答案：
                                        </label>
                                        <div class="col-sm-5">
                                            <select id="type-select" class="form-control" name="entity.right" disabled="disabled">
                                                <option value="true" <s:if test="entity.right==true">selected="selected"</s:if>>正确</option>
                                                <option value="false" <s:if test="entity.right==false">selected="selected"</s:if>>错误</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 启用：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="checkbox" name="entity.enable" style="margin-top: 10px;" value="true" <s:if test="entity.enable==true">checked="checked"</s:if>>启用
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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/exam/question/question-update.js"></script>
            <script type="text/html" id="rideo-div-tpl">
                <div class="form-group">
                    <label class="col-sm-2 col-sm-offset-2 control-label">
                        <font style="color: red;">*</font>选项{{idx+1}}：
                    </label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" name="entity.choices[{{idx}}]" placeholder="请输入选项{{idx+1}}" onkeyup="changeVal(this)">
                    </div>
                    <div class="col-sm-1">
                        <input type="radio" name="entity.answer" value="{{idx}}" style="margin-top: 10px;" /> 答案
                    </div>
                    <div class="col-sm-3">
                        <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                        <button type="button" class="btn btn-danger" onclick="delRideoItem()">删除选项</button>
                    </div>
                </div>
            </script>
            <script type="text/html" id="more-div-tpl">
                <div class="form-group">
                    <label class="col-sm-2 col-sm-offset-2 control-label">
                        <font style="color: red;">*</font>选项{{idx+1}}：
                    </label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" name="entity.choices[{{idx}}]" value="{{value}}" placeholder="请输入选项{{idx+1}}" onkeyup="changeVal(this)">
                    </div>
                    <div class="col-sm-1">
                        <input type="checkbox" name="entity.answers[{{idx}}]" style="margin-top: 10px;" /> 答案
                    </div>
                    <div class="col-sm-3">
                        <button type="button" class="btn btn-success" onclick="addRideoItem(this)">添加选项</button>
                        <button type="button" class="btn btn-danger" onclick="delRideoItem()">删除选项</button>
                    </div>
                </div>
            </script>

            </html>
