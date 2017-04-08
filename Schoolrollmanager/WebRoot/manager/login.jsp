<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>欢迎登录后台管理系统</title>
<link href="manager/css/login.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="manager/js/jquery.js"></script>
<script type="text/javascript" src="manager/js/login.js">
</script>
</head>
<body>
	<div class="main-login">

		<div class="login-content">
			<h2>用户登录</h2>
			<form action="" method="post" id="loginForm">
				<div class="login-info">
					<span class="user">&nbsp;</span> <input name="username"
						id="username" type="text" value="" class="login-input" />
				</div>
				<div class="login-info">
					<span class="pwd">&nbsp;</span> <input name="password"
						id="password" type="password" value="" class="login-input" />
				</div>
				
				<div class="login-info">
					<span class="pwd">&nbsp;</span>
					<select name="position" id="position" class="login-input">
						<option>管理员</option>
						<option>教师</option>
					</select>
				</div>

				<div class="login-oper">
					<input style="margin:1px 10px 0px 2px; float:left;" name=""
						type="checkbox" value="" checked="checked" /><span>记住密码</span>
				</div>

				<div class="login-oper">
					<input name="login" type="button" value="登 录" class="login-btn" />
					<input name="reset" type="button" onclick="reeset();" value="重 置" class="login-reset" />
				</div>

			</form>
		</div>

	</div>

	<div style="text-align:center;"></div>
</body>
</html>
