<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="student/header.jsp" %>
        <link rel="stylesheet" href="">
        <title>党课学习</title>
        </head>

        <body>
            <div class="container">
                <%@ include file="home-nav.jsp" %>
                    <div class="sub-main clearfix">
                        <div class="cur-position"><span>当前位置：</span><span>党课学习</span></div>
                        <table class="sub-table">
                            <thead>
                                <tr class="col-name">
                                    <th>课程编号</th>
                                    <th>标题</th>
                                </tr>
                            </thead>
                            <tbody id="tableContainer">
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td style="text-align: right; border: none;" colspan="10">
                                        <ul class="pagination" id="page-ul">
                                        </ul>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
            </div>
            <%@ include file="student/footer.jsp" %>
                </div>
                <%@include file="student/student-js.jsp" %>
                    <script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
                    <script src="${contextPath}/resources/js/home-nav.js"></script>
                    <script src="${contextPath}/resources/js/article.js"></script>
                    <script>
                    $(function() {
                        var start = 0,
                            limit = 10,
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
                            var h = template(tplId, data);
                            $("#" + appendElementId).html(h);
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
                           
                            <td>{{info.lessonNo}}</td>
                            <td style="width:400px;">
                                <div class="cut-info" style="width:400px;" title="{{info.title}}">{{info.title}}</div>
                            </td>
                        </tr>
                        {{/each}}
                    </script>
        </body>

        </html>
