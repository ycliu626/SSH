<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="student/header.jsp" %>
        <link rel="stylesheet" href="">
        <title>北京邮电大学红旗飘飘网上党校</title>
        </head>

        <body>
            <div class="container">
                <%@ include file="home-nav.jsp" %>
                    <div class="home-main clearfix">
                        <div class="main-side">
                            <div class="box-wrap" id="spe-focus">
                                <div class="home-head hot-title">
                                </div>
                                <div class="box">
                                    <ul class="clearfix" style="margin: 0;" id="hotContent">
                                        <li>
                                            <a style="display: inline-block;" href="http://qzlx.people.com.cn/" target="_blank">
                                                <img src="resources/img/home/zhuanti3.jpg" alt="">
                                            </a>
                                        </li>
                                        <li>
                                            <a style="display: inline-block;" href="http://cpc.people.com.cn/" target="_blank">
                                                <img src="resources/img/home/zhuanti2.png" alt="">
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-wrap" id="login">
                                <div class="home-head yhdl-title">
                                    <!-- <div class="title_wd">

                        </div> -->
                                </div>
                                <div class="box">
                                    <s:if test="#session.loginStudent==null">
                                        <form class="login-form form-horizontal side-box" id="loginForm" action="">
                                            <div class="item-row">
                                                <div class="msg"></div>
                                            </div>
                                            <div class="item-row">
                                                <label class="" for="studentPin">用户名:</label>
                                                <input type="text" name="student.studentPin" class="userName" id="studentPin" />
                                            </div>
                                            <div class="item-row">
                                                <label class="" for="password">密　码:</label>
                                                <input type="password" name="student.password" class="userPwd" id="password" />
                                            </div>
                                            <div class="item-row">
                                                <a class="btn btn-default submit-btn">登录</a>
                                            </div>
                                        </form>
                                    </s:if>
                                    <s:else>
                                        <div style="width:100%;height: 205px;">
                                            <div style="padding: 45px 0px;text-align: center;font-size: 16px;">
                                                你好：
                                                <s:property value="#session.loginStudent.name" />
                                            </div>
                                            <div>
                                                <a href="student/home" class="btn btn-default submit-btn">进入系统</a>
                                            </div>
                                        </div>
                                    </s:else>
                                </div>
                            </div>
                            <div class="box-wrap" id="lxwm">
                                <div class="home-head lxwm-title">
                                    <!-- <div class="desc">党校介绍</div> -->
                                </div>
                                <div class="box">
                                    <div class="intro-text side-box">
                                        <p>
                                            北京邮电大学充分发挥学校在信息科技领域的优势，探索并完善“红旗飘飘”网上党校，创新党员教育和入党积极分子培训模式。网上党校的建立，一方面打破传统课堂授课模式的时空限制，让师生可以随时随地学习党的理论知识；同时也通过创新教育培训模式，充分调动广大师生的学习积极性。
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="box-wrap" id="yqlj">
                                <div class="home-head yqlj-title">
                                </div>
                                <div class="box">
                                    <div class="intro-text side-box">
                                        <ul>
                                            <li><a target="_blank" href="http://cpc.people.com.cn/">人民网-中国共产党新闻</a></li>
                                            <li><a target="_blank" href="http://news.xinhuanet.com/ziliao/2004-11/24/content_2255749.htm">新华网-中国共产党资料</a></li>
                                            <li><a target="_blank" href="http://www.ccps.gov.cn/">中国中央党校</a></li>
                                            <li><a target="_blank" href="http://http://bbs.pku.edu.cn/bbs/bbsdoc.php?board=HongqiOnline&dig=3">北京大学红旗在线</a></li>
                                            <li><a target="_blank" href="http://xcb.bupt.edu.cn/">北京邮电大学党委宣传部</a></li>
                                            <li><a target="_blank" href="">北京邮电大学党委组织部</a></li>
                                            <li><a target="_blank" href="http://www.bupt.edu.cn">北京邮电大学</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end .main-side -->
                        <div class="main">
                            <div class="content clearfix">
                                <div class="box-wrap list-box" id="djdt">
                                    <div class="home-head">
                                        <div class="title_wd djdt-title">
                                        </div>
                                        <div class="more">
                                            <a title="党建动态" href="home!toChannel?channel=djdt&position=<%=URLEncoder.encode(" 党建动态 ") %>" target="_blank">更多 &gt;&gt; </a>
                                        </div>
                                    </div>
                                    <div class="box">
                                        <ul class="clearfix" id="djdtUl">
                                        </ul>
                                    </div>
                                </div>
                                <div class="box-wrap list-box" id="renwu">
                                    <div class="home-head">
                                        <div class="title_wd gmrw-title">
                                        </div>
                                    </div>
                                    <div class="box">
                                        <div class="slider-wrap" style="margin: 0 30px;height: 220px;">
                                            <div class="multiple-items" id="renwuWrap">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="box-wrap list-box" id="spzy">
                                    <div class="home-head">
                                        <div class="title_wd spzy-title">
                                        </div>
                                        <div class="more">
                                            <a title="视频资源" href="home!toChannel?channel=spzy&position=<%=URLEncoder.encode(" 视频资源 ") %>" target="_blank">更多 &gt;&gt; </a>
                                        </div>
                                    </div>
                                    <div class="box">
                                        <ul class="clearfix" id="spzyUl">
                                        </ul>
                                    </div>
                                </div>
                                <div class="box-wrap list-box" id="rddh">
                                    <div class="home-head">
                                        <div class="title_wd rddh-title">
                                        </div>
                                        <div class="more">
                                            <a title="入党导航" href="home!toChannel?channel=rddh&position=<%=URLEncoder.encode(" 入党导航 ") %>" target="_blank">更多 &gt;&gt; </a>
                                        </div>
                                    </div>
                                    <div class="box">
                                        <ul class="clearfix" id='rddhUl'>
                                        </ul>
                                    </div>
                                </div>
                                <div class="box-wrap list-box" id="dkxx">
                                    <div class="home-head">
                                        <div class="title_wd dkxx-title">
                                        </div>
                                        <div class="more">
                                            <a title="党课学习" href="home!toChannel?channel=dkxx&position=<%=URLEncoder.encode(" 党课学习 ") %>" target="_blank">更多 &gt;&gt; </a>
                                        </div>
                                    </div>
                                    <div class="box">
                                        <ul class="clearfix" id="dkxxUl">
                                        </ul>
                                    </div>
                                </div>
                                <div class="box-wrap list-box" id="dszl">
                                    <div class="home-head">
                                        <div class="title_wd dszl-title">
                                        </div>
                                        <div class="more">
                                            <a title="党史资料" href="home!toChannel?channel=dszl&position=<%=URLEncoder.encode(" 党史资料 ") %>" target="_blank">更多 &gt;&gt; </a>
                                        </div>
                                    </div>
                                    <div class="box">
                                        <ul class="clearfix" id="dszlUl">
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end .main -->
                    </div>
                    <%@ include file="student/footer.jsp" %>
            </div>
            <%@include file="student/student-js.jsp" %>
                <script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
                <script src="${contextPath}/resources/js/home-nav.js"></script>
                <script type="text/javascript" src="${contextPath}/resources/js/student/login/login.js"></script>
                <script src="${contextPath}/resources/js/article.js"></script>
                <script>
                function loadHomeInfo(options) {
                    $.ajax({
                            url: options.url,
                            type: 'post',
                            data: {
                                limit: 8
                            },
                            dataType: 'json'
                        })
                        .done(function(data) {
                            var lis = "";
                            var position = encodeURI(options.channel);
                            $.each(data.results, function(i, d) {
                                var li = '<li><div class="' + options.baseCls + '"><a target="_blank" href="article!detail?position=' + position + '&entity._id=' + d._id + '">' + d.title + '</a></div><div class="date">' + d.createTime + '</div></li>';
                                lis += li;
                            });
                            $("#" + options.wrapId).append(lis);
                        });
                }

                $(function() {
                    //革命人物
                    $.ajax({
                            url: 'asp-jcsj!list',
                            type: 'POST',
                            dataType: 'json'
                        })
                        .done(function(data) {
                            var liList = "";
                            var position = encodeURI('革命人物');
                            $.each(data, function(i, d) {
                                var liItem = '<div><a href="asp-jcsj!detail?position=' + position + '&entity._id=' + d._id + '"><img src="' + d.jcsjname + '" height="150px"><div class="renwu-name">' + d.jcsjbt + '</div></a></div>';
                                liList += liItem;
                            });

                            $("#renwuWrap").append(liList);
                            $('.multiple-items').slick({
                                infinite: true,
                                slidesToShow: 5,
                                slidesToScroll: 1,
                                pauseOnHover: false, //鼠标悬停暂停自动播放
                                autoplay: true,
                                autoplaySpeed: 1000
                            });
                        })
                        .fail(function() {

                        });


                    //党建动态
                    loadHomeInfo({
                        url: 'article!page?entity.category=' + artecleCategoryEnum.dangjian_dongtai,
                        channel: '党建动态',
                        baseCls: 'info-title djdt-tt',
                        wrapId: 'djdtUl'
                    });

                    //视频资源
                    loadHomeInfo({
                        url: 'article!page?entity.category=' + artecleCategoryEnum.shipin_ziyuan,
                        channel: '视频资源',
                        baseCls: 'info-title',
                        wrapId: 'spzyUl'
                    });

                    //党史资料
                    loadHomeInfo({
                        url: 'article!page?entity.category=' + artecleCategoryEnum.dangshi_ziliao,
                        channel: '党史资料',
                        baseCls: 'info-title',
                        wrapId: 'dszlUl'
                    });

                    // //党课学习
                    // loadHomeInfo({
                    //     url: 'article!page?entity.category=' + artecleCategoryEnum.dangke_xuexi,
                    //     channel: '党课学习',
                    //     baseCls: 'info-title',
                    //     wrapId: 'dkxxUl'
                    // });

                    //入党导航
                    loadHomeInfo({
                        url: 'article!page?entity.category=' + artecleCategoryEnum.rudang_daohang,
                        channel: '入党导航',
                        baseCls: 'info-title',
                        wrapId: 'rddhUl'
                    });
                });
                </script>
                <script>
                $(function() {
                    //党课学习
                    var start = 0,
                        limit = 8,
                        queryUrl = "lesson!page.action",
                        appendElementId = 'tableContainer',
                        tplId = "myApplyTpl",
                        $pageUl = $("#page-ul"),
                        pageSize = $pageUl.data("page-size"),
                        totalPages = $pageUl.data("total-pages");

                    //加载课程信息
                    $.ajax({
                        url: queryUrl,
                        type: "post",
                        data: {
                            start: start,
                            limit: limit
                        },
                        dataType: 'json',
                    }).done(function(data) {
                    	 var liList = "";
                         $.each(data.results, function(i, d) {
                                var li = '<li><div class="info-title">' + d.title + '</div><div class="date">' + d.lastUpdate+ '</div></li>';
                                liList += li;
                            });
                        $("#dkxxUl" ).html(liList);
                        $pageUl.bootstrapPaginator({
                            currentPage: 1,
                            totalPages: data.totalPages,
                            ajaxOption: {
                                url: queryUrl,
                                pageSize: data.pageSize,
                                appendElement: appendElementId,
                                templateId: tplId
                            }
                        });
                    }).fail(function() {
                        console.log("fail")
                    });
                });
                </script>
                <script type="text/html" id="myApplyTpl">
                    {{each results as info}}
                    <tr>
                        <td>
                            <input type='checkbox' class='child' name='hiddenId' value='{{info._id}}' />
                        </td>
                        <td>{{info.lessonNo}}</td>
                        <td style="width:400px;">
                            <div class="cut-info" style="width:400px;" title="{{info.title}}">{{info.title}}</div>
                        </td>
                    </tr>
                    {{/each}}
                </script>
        </body>

        </html>
