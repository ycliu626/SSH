<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="student/header.jsp" %>
<link rel="stylesheet" href="">
<title>入党导航</title>
</head>

<body>
	<div class="container">

		<%@ include file="home-nav.jsp"%>
		<div class="sub-main clearfix">
<!-- 			<div class="sub-side" >
				<ul>
					<li class="first-sub-nav ">入党导航</li>
					<li class="second-sub-nav "><a href="">入党必读</a></li>
					<li class="second-sub-nav "><a href="">入党文书</a></li>
					<li class="second-sub-nav "><a href="">入党誓词</a></li>
				</ul>
			</div> -->
			<!-- end .main-side -->
			<div class="cur-position"><span>当前位置：</span><span>入党导航</span></div>
				<table class="sub-table">
					<thead>
						<tr class="col-name">
							<th class="width70">文章标题</th>
							<!-- <th>阅读</th> -->
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
			<!-- end .main -->
		</div>
		<%@ include file="student/footer.jsp"%>
	</div>
	<%@include file="student/student-js.jsp"%>
	<script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
	<script src="${contextPath}/resources/js/home-nav.js"></script>
	<script src="${contextPath}/resources/js/article.js"></script>
	<script>
		$(function() {
			listArticle(artecleCategoryEnum.rudang_daohang);
		});
	</script>
	<script type="text/html" id="myApplyTpl">
	    {{each results as info}}
	    <tr>
	        <td><a target="_blank" href="article!detail?position={{position}}&entity._id={{info._id}}">{{info.title}}</a></td>
	        <!--<td>{{info.readTimes}}</td>-->
			<td>{{info.createTime}}</td>
	    </tr>
	    {{/each}}
	</script>
</body>
</html>
