<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation" style="margin-bottom:0px;border-radius:0px;">
        <div class="navbar-header">
            <a class="navbar-brand" href="/home">北京邮电大学</a>
        </div>
        <div>
            <s:if test="#session.loginUser.type<=1">
                <ul class="nav navbar-nav" style="float: right;">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              在线学习管理
               <b class="caret"></b>
            </a>
                        <ul class="dropdown-menu">
                            <li><a href="lesson">课程管理</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        资源管理 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="courseware">课件管理</a> </li>
                            <li><a href="handout">讲义管理</a> </li>
                            <li><a href="discuss-thinking">讨论思考管理</a> </li>
                            <li><a href="reading">指定阅读管理</a> </li>
                            <li><a href="extra-reading">扩展阅读管理</a> </li>
                            <li><a href="video-audio-info">视频管理</a> </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              在线测试管理
               <b class="caret"></b>
            </a>
                        <ul class="dropdown-menu">
                            <li><a href="question">题库管理</a>
                            </li>
                            <li><a href="test-paper">试卷管理</a>
                            </li>
                            <li><a href="exam-chapter">章节测试管理</a>
                            </li>
                            <li><a href="exam-complete">综合测试管理</a>
                            </li>
                            <li><a href="exam-focused">集中测试管理</a>
                            </li>
                            <li><a href="result-chapter-exam">章节测试成绩查看</a>
                            </li>
                            <li><a href="result-complete-exam">综合测试成绩查看</a>
                            </li>
                            <li><a href="result-focused-exam">集中测试成绩查看</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        统计 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="statistics?reportName=activist">积极分子总体情况统计</a>
                            </li>
                            <li><a href="statistics?reportName=open">公开课效果统计</a>
                            </li>
                            <li><a href="statistics?reportName=view-open">公开课浏览统计</a>
                            </li>
                            <li><a href="statistics?reportName=session">党校分期统计</a>
                            </li>
                            <li><a href="statistics?reportName=process">学员学习进度统计</a>
                            </li>
                            <li><a href="statistics?reportName=process-detail">学员学习进度详情</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               基础支持管理
               <b class="caret"></b>
            </a>
                        <ul class="dropdown-menu">
                            <li><a href="period">学期管理</a>
                            </li>
                            <li><a href="student!studentList.action">学员管理</a>
                            </li>
                            <li><a href="join-process">入党过程管理</a>
                            </li>
                            <li><a href="public-class">红旗飘飘公开课管理</a>
                            </li>
                            <li><a href="activity">支部特色活动管理</a>
                            </li>
                            <li><a href="notice">通知公告管理</a>
                            </li>
                            <li><a href="college">二级党委管理</a>
                            </li>
                            <li><a href="user">用户管理</a>
                            </li>
                            <li><a href="new-user">新用户管理</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            首页信息维护
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="article">资料版块管理</a></li>
                            <li><a href="hot">热点专题管理</a></li>
                            <li><a href="asp-jcsj">革命人物管理</a></li>
                        </ul>
                    </li>
                    <li><a href="#">${sessionScope.loginUser.name}</a>
                    </li>
                    <li><a href="login!userExit.action">退出</a>
                    </li>
                </ul>
            </s:if>
            <s:elseif test="#session.loginUser.type==2">
                <ul class="nav navbar-nav" style="float: right;">
<!--                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              在线学习管理
               <b class="caret"></b>
            </a>
                        <ul class="dropdown-menu">
                            <li><a href="lesson">课程管理</a>
                            </li>
                        </ul>
                    </li> -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              在线测试管理
               <b class="caret"></b>
            </a>
                        <ul class="dropdown-menu">
                            <li><a href="result-chapter-exam">章节测试成绩查看</a>
                            </li>
                            <li><a href="result-complete-exam">综合测试成绩查看</a>
                            </li>
                            <li><a href="result-focused-exam">集中测试成绩查看</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        统计 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="statistics?reportName=activist">积极分子总体情况统计</a>
                            </li>
                            <li><a href="statistics?reportName=open">公开课效果统计</a>
                            </li>
                            <li><a href="statistics?reportName=view-open">公开课浏览统计</a>
                            </li>
                            <li><a href="statistics?reportName=session">党校分期统计</a>
                            </li>
                            <li><a href="statistics?reportName=process">学员学习进度统计</a>
                            </li>
                            <li><a href="statistics?reportName=process-detail">学员学习进度详情</a>
                            </li>
                        </ul>
                    </li>
<!--                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        资源管理 <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="courseware">课件管理</a> </li>
                            <li><a href="handout">讲义管理</a> </li>
                            <li><a href="discuss-thinking">讨论思考管理</a> </li>
                            <li><a href="reading">指定阅读管理</a> </li>
                            <li><a href="extra-reading">扩展阅读管理</a> </li>
                            <li><a href="video-audio-info">视频管理</a> </li>
                        </ul>
                    </li> -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               基础支持管理
               <b class="caret"></b>
            </a>
                        <ul class="dropdown-menu">
                            <li><a href="student!studentList.action">学员管理</a>
                            </li>
                            <li><a href="public-class">红旗飘飘公开课管理</a>
                            </li>
                            <li><a href="activity">支部特色活动管理</a>
                            </li>
                            <li><a href="notice">通知公告管理</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">${sessionScope.loginUser.name}</a>
                    </li>
                    <li><a href="login!userExit.action">退出</a>
                    </li>
                </ul>
            </s:elseif>
<%--             <s:elseif test="#session.loginUser.type==3">
                <ul class="nav navbar-nav" style="float: right;">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                   基础支持管理
                   <b class="caret"></b>
                </a>
                        <ul class="dropdown-menu">
                            <li><a href="student!studentList.action">学员管理</a>
                            </li>
                            <li><a href="activity!activityList.action">支部特色活动管理</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">${sessionScope.loginUser.name}</a>
                    </li>
                    <li><a href="login!userExit.action">退出</a>
                    </li>
                </ul>
            </s:elseif> --%>
        </div>
    </nav>
    <div class="banner" style="border:0;height: 165px; width: 940px;margin-bottom:0px;border-radius:0px;">
        <img src="../resources/img/student/new-banner.png" alt="红旗飘飘">
    </div>