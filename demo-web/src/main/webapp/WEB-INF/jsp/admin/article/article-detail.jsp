<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <title>通知公告管理</title>
        <style>
        .p-content {
            margin: 0 0 0px;
            padding: 6px 12px;
        }

        .article-content {
		  margin: 30px;
		}
		.article-content .title {
		  font-size: 16px;
		  font-weight: 700;
		  text-align: center;
		  margin: 10px;
		}
		.article-content .publish-date {
		  text-align: center;
		  margin-bottom: 20px;
		}
        </style>
        </head>

        <body>
            <div class="container">
                <%@include file="../admin-nav.jsp" %>
                    <div class="panel panel-default" style="margin-bottom:0px;border-radius:0px;">
                        <div class="panel-body">

				         <div class="article-content">
							<div class="title">${entity.title}</div>
							<div class="publish-date"><s:date name="entity.createTime" format="yyyy-MM-dd" /></div>
							<div class="content">${entity.content}</div>
						</div>

						<s:if test="entity.attachment!=null&&entity.attachment!=''">
								<div class="form-group">
                                  <div class="col-sm-5">
                                      <p class="p-content">
                                          附件：<a href="download.action?fileName=${entity.attachment}">点击下载</a>
                                      </p>
                                  </div>
                              </div>
						</s:if>

                        </div>
                    </div>
                    <%@ include file="../../student/footer.jsp" %>
            </div>
        </body>
        <%@include file="../admin-js.jsp" %>

            </html>
