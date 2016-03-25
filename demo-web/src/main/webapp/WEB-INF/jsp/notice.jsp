<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="student/header.jsp" %>
<link rel="stylesheet" href="">
<title>通知公告</title>
</head>

<body>
	<div class="container">
		<%@ include file="home-nav.jsp"%>
		<div class="sub-main clearfix">
			<div class="cur-position"><span>当前位置：</span><span>通知公告</span></div>
			<table class="sub-table">
				<thead>
					<tr class="col-name">
						<th class="width70">文章标题</th>
						<th>发表时间</th>
					</tr>
				</thead>
				<tbody id="tableContainer">

				</tbody>
				<tfoot>
					<tr>
                        <td style="text-align: right; border: none;" colspan="10">
                            <ul class="pagination" id="page-ul" >
                            </ul>
                        </td>
                    </tr>
				</tfoot>
			</table>
		</div>
		<%@ include file="student/footer.jsp"%>
	</div>
	<%@include file="student/student-js.jsp"%>
	<script src="${contextPath}/resources/js/home-nav.js"></script>
	<script src="${contextPath}/resources/js/article.js"></script>
	<script>
		$(function() {
			listArticle(artecleCategoryEnum.tongzhi_gonggao);
		});
	</script>
	<%@ include file="article-detail-tmpl.jsp"%>
</body>
</html>
