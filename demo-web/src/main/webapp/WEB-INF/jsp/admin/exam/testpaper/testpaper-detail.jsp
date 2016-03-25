<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../../header.jsp" %>
        <title>试卷管理</title>
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
                            <form id="ff" action="test-paper!reBuild.action" method="post" class="form-horizontal" role="form">
                                <input type="hidden" name="entity._id" value="${entity._id}" />
                                <!-- 分割线begin -->
                                <div style="font-size: 16px;margin-bottom:30px;border-bottom: 1px solid #ffbc1c;">
                                    <span class="glyphicon glyphicon-edit"></span>
                                    <b style="margin-left: 5px;">试卷信息</b>
                                </div>
                                <!-- 分割线end -->
                                <s:if test="entity.questions.size>0">
                                    <s:iterator value="entity.questions" status="num">
                                        <!--  单选 -->
                                        <s:if test="qusType==0">
                                            <div class="form-group">
                                                <label class="col-sm-2 col-sm-offset-2 control-label">${num.index+1}.单选题：</label>
                                                <div class="col-sm-5">
                                                    <p class="p-content">${title}</p>
                                                </div>
                                                <div class="col-sm-2">
                                                    <p class="p-content">
                                                        <s:if test="level==0">
                                                            容易题
                                                        </s:if>
                                                        <s:elseif test="level==1">
                                                            中等题
                                                        </s:elseif>
                                                        <s:elseif test="level==2">
                                                            困难题
                                                        </s:elseif>
                                                    </p>
                                                </div>
                                                <s:iterator var="c" value="choices" status="s">
                                                    <label class="col-sm-2 col-sm-offset-2 control-label">选项${s.index+1 }：</label>
                                                    <div class="col-sm-5">
                                                        <!-- 答案显示红色 -->
                                                        <s:if test="#c==answer">
                                                            <p class="p-content" style="color: red;">${c}</p>
                                                        </s:if>
                                                        <s:else>
                                                            <p class="p-content">${c}</p>
                                                        </s:else>
                                                    </div>
                                                </s:iterator>
                                            </div>
                                        </s:if>
                                        <!--  多选 -->
                                        <s:elseif test="qusType==1">
                                            <div class="form-group">
                                                <label class="col-sm-2 col-sm-offset-2 control-label">${num.index+1}.多选题：</label>
                                                <div class="col-sm-5">
                                                    <p class="p-content">${title}</p>
                                                </div>
                                                <div class="col-sm-2">
                                                    <p class="p-content">
                                                        <s:if test="level==0">
                                                            容易题
                                                        </s:if>
                                                        <s:elseif test="level==1">
                                                            中等题
                                                        </s:elseif>
                                                        <s:elseif test="level==2">
                                                            困难题
                                                        </s:elseif>
                                                    </p>
                                                </div>
                                                <s:iterator var="c" value="choices" status="s">
                                                    <label class="col-sm-2 col-sm-offset-2 control-label">选项${s.index+1 }：</label>
                                                    <div class="col-sm-5">
                                                        <p class="p-content" <s:iterator var="as" value="answers" status="s">
                                                            <s:if test="#c==#as">style="color: red;"</s:if>
                                                </s:iterator>
                                                >${c}</p>
                                                </div>
                                    </s:iterator>
                                    </div>
                                    </s:elseif>
                                    <!-- 判断 -->
                                    <s:elseif test="qusType==2">
                                        <div class="form-group">
                                            <label class="col-sm-2 col-sm-offset-2 control-label">${num.index+1}.判断题：</label>
                                            <div class="col-sm-5">
                                                <p class="p-content">${title}</p>
                                            </div>
                                            <div class="col-sm-2">
                                                <p class="p-content">
                                                    <s:if test="level==0">
                                                        容易题
                                                    </s:if>
                                                    <s:elseif test="level==1">
                                                        中等题
                                                    </s:elseif>
                                                    <s:elseif test="level==2">
                                                        困难题
                                                    </s:elseif>
                                                </p>
                                            </div>
                                            <label class="col-sm-2 col-sm-offset-2 control-label">答案：</label>
                                            <div class="col-sm-5">
                                                <p class="p-content" style="color: red;">
                                                    <s:if test="right">正确</s:if>
                                                    <s:else>错误</s:else>
                                                </p>
                                            </div>
                                        </div>
                                    </s:elseif>
                                    </s:iterator>
                                </s:if>
                                <div class="form-group">
                                    <div class="col-sm-offset-5 col-sm-2">
                                        <button class="btn btn-default" onclick="ff.submit()">重新出题</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <%@ include file="../../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../../admin-js.jsp" %>
        <script type="text/javascript">
        $(function(){
        	var size='${fn:length(entity.questions) }';
        	console.log(size);
        	if(size==0){
        		alertify.alert('此试卷无试题<br>您输入的出题规则有误或无符合规则的题目！');
        	}
        })
		</script>

            </html>
