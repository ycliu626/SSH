<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>支部特色活动</title>
        </head>

        <body>
            <div class="container">
                <%@ include file="../student-nav.jsp" %>
                    <div class="info-board clearfix">
                        <div class="activity-banner"></div>
                        <div class="info-wrapper clearfix">
                            <table class="lesson-table">
                                <thead>
                                    <tr>
                                        <th>活动名称</th>
                                        <th>支部名称</th>
                                        <th>活动时间</th>
                                        <!-- <th>活动地点</th> -->
                                    </tr>
                                </thead>
                                <tbody id="branch-activity-table">
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td style="text-align: center; border: none;" colspan="2">
                                            <ul class="pagination" id="page-ul">
                                            </ul>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!--<div class="right-panel">
                            <div class="notice-list">
                                <div class="top">
                                    <div class="top-head">通知公告</div>
                                    <div class="top-more">
                                        <a href="notice!page">更多&gt;&gt;</a>
                                    </div>
                                </div>
                                <div>
                                    <s:iterator value="listNoticeInfo" status="st">
                                        <div class="info-title">
                                            <a href="notice!detail?entity._id=${_id}">
                                                <s:property value="title" />
                                            </a>
                                            <span style="float: right;"><s:date name="releaseDate" format="MM-dd" /></span>
                                            <div style="clear: both;"></div>
                                        </div>
                                    </s:iterator>
                                </div>
                                <div style="clear: both;"></div>
                            </div>
                            <div class="timeline-list">
                                <div class="top">
                                    <div class="top-head">时间轴</div>
                                </div>
                                <div class="timeline">
                                    <div class="line"></div>
                                    <div class="timeline-content">
                                        <div class="icon-success">
                                            <div class="icon-title">申</div>
                                        </div>
                                        <div class="msg">2004年12月21日申请加入中国共产党</div>
                                    </div>
                                </div>
                                <div class="timeline">
                                    <div class="line"></div>
                                    <div class="timeline-content">
                                        <div class="icon-success">
                                            <div class="icon-title">积</div>
                                        </div>
                                        <div class="msg">通过考试成为积极分子</div>
                                    </div>
                                </div>
                                <div class="timeline">
                                    <div class="line"></div>
                                    <div class="timeline-content">
                                        <div class="icon-success">
                                            <div class="icon-title">章</div>
                                        </div>
                                        <div class="msg">2005年3月21日通过第一课时的考试</div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
			             <div class="right-panel">
							<%@ include file="../notice-right.jsp"%>
						</div>
                    </div>
                    <%@ include file="../footer.jsp" %>
            </div>
        </body>
        <%@include file="../student-js.jsp" %>
            <script type="text/javascript" src="${contextPath}/resources/js/student/branch-activity/branch-activity-list.js"></script>
            <script type="text/html" id="branch-activity-info">
                {{each results as info}}
                <tr>
                    <td><a href='javascript:void(0)' data-bupt-id='{{info._id}}'>{{info.title}}</a></td>
                    <td>{{info.branchName}}</td>
                    <td>{{info.activityDate}}</td>
                    <!--<td>{{info.place}}</td>-->
                 </tr>
                {{/each}}
            </script>

            </html>
