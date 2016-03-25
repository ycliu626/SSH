<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="nav">
        <div class="bar">
            <div class="currside">
                <div class="home-tip">欢迎访问北京邮电大学红旗飘飘网站</div>
            </div>
            <div class="navside">
                <div id="nav-exit">
                    <span class="hello">欢迎访问：${sessionScope.loginStudent.name}</span>
                    <div class="orange-btn">
                        退出
                    </div>
                </div>
            </div>
        </div>
        <div class="banner"></div>
        <div class="nav-menu">
            <ul>
                <li><a href="home">首　　页</a></li>
                <li><a href="article!partyDesc">党校介绍</a></li>
                <li><a href="home!toChannel?channel=notice&position=<%=URLEncoder.encode("通知公告") %>">通知公告</a></li>
                <li><a href="home!toChannel?channel=gzdt&position=<%=URLEncoder.encode("工作动态") %>">工作动态</a></li>
                <li><a href="home!toChannel?channel=rddh&position=<%=URLEncoder.encode("入党导航") %>">入党导航</a></li>
                <li><a href="home!toChannel?channel=ztjj&position=<%=URLEncoder.encode("专题聚焦") %>">专题聚焦</a></li>
                <li><a href="home!toChannel?channel=policy&position=<%=URLEncoder.encode("政策文件") %>">政策文件</a></li>
                <li class="jd clearfix">
                    <a href="#">教育培训</a>
                    <ul class="dropdown hide">
                        <li><a href="student/home">积极分子</a></li>
                        <li><a href="#">发展对象</a></li>
                        <li><a href="#">支部书记</a></li>
                        <li><a href="#">党员培训</a></li>
                        <li><a href="#">干部培训</a></li>
                    </ul>
                </li>
                <li><a href="home!toChannel?channel=download-center&position=<%=URLEncoder.encode("下载专区") %>">下载专区</a></li>
            </ul>
        </div>
    </div>
    <div class="scroll-news" id="scrollNews">
        <ul class="clearfix">
            <li class="info-title" id="currDate"></a></li>
        </ul>
    </div>
    <script type="text/javascript">
    var studentPin = '${sessionScope.studentPin}';
    </script>