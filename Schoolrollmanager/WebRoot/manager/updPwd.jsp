<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="manager/js/jquery.js"></script>
	<script type="text/javascript" src="manager/js/updPwd.js"></script>
	<link rel="stylesheet" href="manager/css/add.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css" type="text/css" media="screen" />
  </head>
  
  <body>
    <div class="div_from_aoto" style="width: 350px;">
    <FORM action="" method="post" id="updPwdFrom">
        <DIV class="control-group" align="center">
            <label class="laber_from">输入新密码</label>
            <DIV  class="controls" ><INPUT style="width: 200px" class="input_from" name="password" id="password" type=text placeholder="请输入新密码"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group" align="center">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><input style="width: 150px;" onclick="updPwd();" type="button" class="btn btn-success" style="width:120px;" value="确定"/></DIV>
        </DIV>
    </FORM>
</div>
  </body>
</html>
