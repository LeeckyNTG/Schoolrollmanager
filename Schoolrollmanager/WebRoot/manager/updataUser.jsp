<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="manager/js/jquery.js"></script>

<script type="text/javascript" src="manager/js/updataUser.js"></script>

<link rel="stylesheet" href="manager/css/add.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css"
	type="text/css" media="screen" />

</head>

<body>
	<div class="div_from_aoto" style="width: 500px;">
    <FORM action="" method="post" id="updUserFrom">
        <DIV class="control-group">
        	<input type="hidden" name="userId" id="userId"/>
            <label class="laber_from">用户名</label>
            <DIV  class="controls" ><INPUT class="input_from" name="username" id="username" type="text" placeholder=" 请输入用户名"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">密码</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="password" id="password" type="text" placeholder=" 请输入密码"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" >姓名</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="name" id="name" type="text" placeholder=" 请输入姓名"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><input type="button" name="uptButton" onclick="updUserById()" class="btn btn-success" style="width:120px;" value="确定修改"/></DIV>
        </DIV>
    </FORM>
</div>
</body>
</html>
