<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="manager/js/jquery.js"></script>
	<script type="text/javascript" src="manager/js/addUser.js"></script>
	<link rel="stylesheet" href="manager/css/add.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css" type="text/css" media="screen" />	

  </head>
  
  <body>
    <div class="div_from_aoto" style="width: 350px;">
    <FORM action="" method="post" id="addUserFrom">
        <DIV class="control-group" align="center">
            <label class="laber_from">用户名</label>
            <DIV  class="controls" ><INPUT style="width: 200px" class="input_from" name="username" id="username" type=text placeholder=" 英文和数字,长度:5~10"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group" align="center">
            <LABEL class="laber_from">密码</LABEL>
            <DIV  class="controls" ><INPUT style="width: 200px" class="input_from" onclick="cheakUsername();" name="password" id="password"  type=text placeholder=" 请输入密码"><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group" align="center">
            <LABEL class="laber_from" >确认密码</LABEL>
            <DIV  class="controls" ><INPUT style="width: 200px" onclick="cheakPassword();" class="input_from" name="repassword" id="repassword"  type=text placeholder=" 请输入确认密码"><P class=help-block></P></DIV>
        </DIV>
        
         <DIV class="control-group" align="center">
            <LABEL class="laber_from" >姓名</LABEL>
            <DIV  class="controls" ><INPUT style="width: 200px" onclick="cheakrePassword();" class="input_from" name="name" id="name"  type=text placeholder=" 请输入姓名"><P class=help-block></P></DIV>
        </DIV>
        
        <DIV class="control-group" align="center">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><input style="width: 200px;" onclick="addUser();" type="button" class="btn btn-success" style="width:120px;" value="注册"/></DIV>
        </DIV>
    </FORM>
</div>
  </body>
</html>
