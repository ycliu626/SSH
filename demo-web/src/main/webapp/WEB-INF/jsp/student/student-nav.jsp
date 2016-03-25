<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div class="nav">
        <div class="banner"></div>
        <div class="bar">
            <div class="currside">
                <div class="home-logo"></div>
                <div class="cut"></div>
                <a href="../home" class="home-tip">门户首页</a>
            </div>
            <div class="navside">
                <div id="home" class="red-btn">
                    <span class="home"></span>&nbsp;首&nbsp;&nbsp;&nbsp;&nbsp;页
                </div>
                <div id="nav-public-class" class="red2-btn">
                    <span class="public-class"></span>红旗飘飘公开课
                </div>
                <div id="nav-activity" class="red3-btn">
                    <span class="activity"></span>支部特色活动
                </div>
                <div id="nav-lesson" class="red-btn">
                    <span class="lesson"></span>课程中心
                </div>
                <div id="nav-exam" class="red-btn">
                    <span class="exam"></span>考试中心
                </div>
                <div id="nav-center" class="red-btn">
                    <span class="my"></span>个人中心
                </div>
                <div id="nav-login-reg">
                    <div class="orange-btn">
                        登录
                    </div>
                    <!-- 				<div class="orange-btn">
					注册
				</div> -->
                </div>
                <div id="nav-exit" class="orange-btn">
                    退出
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    var studentPin = '${sessionScope.studentPin}';
    </script>
    <!-- <nav class="navbar navbar-default" role="navigation" style="margin-bottom:0px;">
<div>
	<ul class="nav navbar-nav  navbar-right">
		<li id="text-home" ><a href="student">首页</a></li>
		<li id="text-course"><a href="study-course">课程中心</a></li>
		<li id="text-exam"><a href="#">考试中心</a></li>
		<li id="text-information"><a href="#">个人中心</a></li>
		<li id="text-public-class"><a href="public-class!showPublicClassList.action">红旗飘飘公开课</a></li>
		<li id="text-party-activity"><a href="branch-activity!showBranchActivityList">支部特色活动</a></li>
		<li id="text-user"><a href="#">XX</a></li>
		<li id="text-exit"><a href="#">退出</a></li>
	</ul>
</div>

</nav>
<div style="height:200px; background-color: red;">
	学生首页图片
</div> -->
