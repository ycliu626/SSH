<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>
<title>个人中心</title>
</head>
<body onload="modifyPwd()">
	<div class="container">
		<%@ include file="../student-nav.jsp"%>

		<div class="center-board clearfix">
			<div class="center-banner"></div>

			<div class="left">
				<div id="my-info" class="my-info"></div>
				<div class="my-pwd-focus"></div>
				<div id="my-progress" class="my-progress"></div>
				<div id="my-result" class="my-result"></div>

			</div>

			<div class="right">
				<div class="board">
					<div class="headline">密码修改</div>
					<div class="underline"></div>

					<div class="pwd-box">
						<div id="pwdMsg" class="errmsg"></div>
						<form onsubmit="return false">
							<table>
								<tr>
									<td>原密码:</td>
									<td><input type="password" id="oldPwd" name="oldPwd"></td>
								</tr>
								<tr>
									<td>新密码:</td>
									<td><input type="password" id="newPwd" name="newPwd"></td>
								</tr>
								<tr>
									<td>确认密码:</td>
									<td><input type="password" id="reNewPwd"></td>
								</tr>
								<tr>
									<td colspan="2" style="padding: 0px;">
										<input type="submit" class="submit" id="subPwd" value="">
									</td>
								</tr>
							</table>
						</form>
					</div>


				</div>
			</div>

		</div>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
<%@include file="../student-js.jsp"%>
<script type="text/javascript" src="${contextPath}/resources/js/student/center/center.js"></script>
<script type="text/javascript">
function modifyPwd(){
	var first=${sessionScope.loginStudent.firstLogin};
	if(first){
		alert("您是第一次登录系统,请修改密码!");
	}
}
</script>
</html>