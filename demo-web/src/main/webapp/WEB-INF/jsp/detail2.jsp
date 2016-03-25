<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="student/header.jsp" %>
<link rel="stylesheet" href="">
<title>${position}</title>
<style>
        .p-content {
            margin: 20px 0 0 0px;
        }
</style>
</head>

<body>
	<div class="container">
		<%@ include file="home-nav.jsp"%>
		<div class="sub-main clearfix">
			<div class="cur-position"><span>当前位置：</span><span>${position}</span></div>
			<div class="article-content">
				<div class="title">${entity.title}</div>
				<div class="publish-date"><s:date name="entity.createTime" format="yyyy-MM-dd" /></div>
				<div class="content">${entity.content}</div>
				<s:if test="entity.attachment!=null&&entity.attachment!=''">
					<p class="p-content">
                       附件：<a href="download.action?fileName=${entity.attachment}">点击下载</a>
                   </p>
				</s:if>
			</div>
		</div>
		<%@ include file="student/footer.jsp"%>
	</div>
	<%@include file="student/student-js.jsp"%>
	<script type="text/javascript" src="${contextPath}/js-lib/slick-1.5.0/slick/slick.js"></script>
	<script src="${contextPath}/resources/js/home-nav.js"></script>
</body>
</html>
