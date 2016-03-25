<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>登录</title>
</head>
<body class="login-panel">

	<div class="container" style="background-color: #fff;">
		<%@ include file="../student-nav.jsp"%>

		<div class="login-panel">
			<div class="login-body">
				<div class="msg"></div>
				<form id="form" onsubmit="return false">
					<input type="text" name="student.studentPin" class="userName"/>
					<input type="password" name="student.password" class="userPwd"/>
				</form>

				<input type="submit" class="submit"value="">
			</div>
		</div>

	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/login/login.js"></script>
</html>