<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>
            综合测试管理
        </title>
        </head>

        <body>
            <div class="container">
                <%@include file="../../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom: 0px; border-radius: 0px;">
                        <div class="panel-body">
                            <form id="queryForm" class="form-horizontal" role="form" onsubmit="return false">
                                <!-- 分割线begin -->
                                <div style="font-size: 16px; margin-bottom: 30px; border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span> <b style="margin-left: 5px;"><s:if test="entity==null">添加</s:if><s:else>修改</s:else>综合测试信息</b>
                                </div>
                                <!-- 分割线end -->
                                <input type="hidden" name="entity._id" value="${entity._id}">
                                <input type="hidden" name="entity.createTime" value="${entity.createTime}">
                                <input type="hidden" name="entity.lastUpdate" value="${entity.lastUpdate}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>测试名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.title" value="${entity.title}" placeholder="请输入测试名称">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>及格分数：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.passMark" value="${entity.passMark}" placeholder="请输入及格分数">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>通过提示：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.passPrompt" value="${entity.passPrompt}" placeholder="请输入通过提示">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>未通过提示：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" name="entity.notPassPrompt" value="${entity.notPassPrompt}" placeholder="请输入未通过提示">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>出题方式：
                                    </label>
                                    <div class="col-sm-5">
                                        <input id="random-check" type="checkbox" name="entity.randomQuestion" style="margin-top: 10px;font-size: 20px" value="true" <s:if test="entity.randomQuestion==true">checked="checked"</s:if>> 随机
                                    </div>
                                </div>
                                <div id="paper-div" class="form-group" <s:if test="entity.randomQuestion==true">style="display:none" </s:if>>
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font> 试卷名称：
                                    </label>
                                    <div class="col-sm-5">
                                        <select id="testpaper-select" class="form-control" name="entity.testPaper._id" data-testpaper="${entity.testPaper.title}">
                                        </select>
                                    </div>
                                </div>
                                <div id="paper-rule-div" <s:if test="entity==null||entity.randomQuestion==false">style="display:none" </s:if>>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-offset-2 control-label">
                                            <font style="color: red;">*</font>题目数量：
                                        </label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" name="entity.paperRule.questionCount" value="<s:if test=" entity==null|| entity.paperRule==null ">50</s:if>${entity.paperRule.questionCount}" placeholder="请输入题目数量">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-offset-2 control-label">
                                            <font style="color: red;">*</font>容易题比例：
                                        </label>
                                        <div class="col-sm-5">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="entity.paperRule.easyRatio" value="${entity.paperRule.easyRatio}" placeholder="请输入容易题比例">
                                                <span class="input-group-addon">&nbsp;％&nbsp;&nbsp;</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-offset-2 control-label">
                                            <font style="color: red;">*</font>中等题比例：
                                        </label>
                                        <div class="col-sm-5">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="entity.paperRule.mediumRatio" value="${entity.paperRule.mediumRatio}" placeholder="请输入中等题比例">
                                                <span class="input-group-addon">&nbsp;％&nbsp;&nbsp;</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 col-sm-offset-2 control-label">
                                            <font style="color: red;">*</font>难题比例：
                                        </label>
                                        <div class="col-sm-5">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="entity.paperRule.hardRatio" value="${entity.paperRule.hardRatio}" placeholder="请输入难题比例">
                                                <span class="input-group-addon">&nbsp;％&nbsp;&nbsp;</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="lessons">
	                                    <s:if test="lessonList!=null&&lessonList.size>0">
		                                    	<s:iterator var="l" value="lessonList" status="s">
		                                    		<div class="lessonChoice">
									                    <div class="form-group">
									                        <label class="col-sm-2 col-sm-offset-2 control-label">
									                            <font style="color: red;">*</font>关联课程名称：
									                        </label>
									                        <div class="col-sm-5">
									                            <input type="hidden" class="form-control" name="entity.paperRule.lessonRatios[${s.index }].lessonId" value="${l._id }">
									                            </input>
									                            <input type="text" class="form-control" disabled value="${l.title }">
									                            </input>
									                        </div>
									                    </div>
									                    <div class="form-group">
									                        <label class="col-sm-2 col-sm-offset-2 control-label">
									                            <font style="color: red;">*</font>课程比例：
									                        </label>
									                        <div class="col-sm-5">
									                            <div class="input-group">
									                            	<input type="text" class="form-control" placeholder="请输入课程比例" name="entity.paperRule.lessonRatios[${s.index }].ratio"
										                            	<s:iterator var="r" value="entity.paperRule.lessonRatios">
										                            		<s:if test="#r.lessonId==#l._id">
										                            			value="${r.ratio}"
										                            		</s:if>
										                            	</s:iterator>
										                            	>
									                                <span class="input-group-addon">&nbsp;％&nbsp;&nbsp;</span>
									                            </div>
									                        </div>
									                    </div>
									                </div>
		                                    	</s:iterator>
	                                    	</s:if>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        启用：
                                    </label>
                                    <div class="col-sm-5">
                                        <input type="checkbox" name="entity.enable" style="margin-top: 10px;" value="true" <s:if test="entity.enable==true">checked="checked"</s:if>>启用
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        计时：
                                    </label>
                                    <div class="col-sm-5">
                                        <input id="enableTimer" type="checkbox" name="entity.enableTimer" style="margin-top: 10px;" value="true" <s:if test="entity.enableTimer==true">checked="checked"</s:if>>计时
                                    </div>
                                </div>
                                <div class="form-group" id="examtime" <s:if test="entity==null||entity.enableTimer!=true">style="display:none"</s:if> >
                                    <label class="col-sm-2 col-sm-offset-2 control-label">
                                        <font style="color: red;">*</font>考试时长：
                                    </label>
                                    <div class="col-sm-5">
                                    <div class="input-group">
                                        <input type="number" class="form-control" name="entity.examLength" value="${entity.examLength}" placeholder="请输入通过考试时长">
                                        <span class="input-group-addon">&nbsp;分钟&nbsp;&nbsp;</span>
                                    </div>

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
            <script type="text/javascript" src="${contextPath}/resources/js/admin/exam/complete/complete-update.js"></script>
            <script type="text/html" id="lesson-div-tpl">
                {{each results as info}}
                <div class="lessonChoice">
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-offset-2 control-label">
                            <font style="color: red;">*</font>关联课程名称：
                        </label>
                        <div class="col-sm-5">
                            <input type="hidden" class="form-control" name="entity.paperRule.lessonRatios[{{$index}}].lessonId" value="{{info._id}}">
                            </input>
                            <input type="text" class="form-control" disabled value="{{info.title}}">
                            </input>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-offset-2 control-label">
                            <font style="color: red;">*</font>课程比例：
                        </label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="请输入课程比例" name="entity.paperRule.lessonRatios[{{$index}}].ratio" value="${entity.paperRule.lessonRatios[0].ratio}">
                                <span class="input-group-addon">&nbsp;％&nbsp;&nbsp;</span>
                            </div>
                        </div>
                    </div>
                </div>
                {{/each}}
            </script>

            </html>
