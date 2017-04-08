<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatePassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="manager/css/add.css" type="text/css" media="screen" />
	<script type="text/javascript" src="manager/js/jquery.js"></script>
	<script type="text/javascript" src="manager/js/tendina.min.js"></script>
	<script type="text/javascript" src="manager/js/common.js"></script>
	<script type="text/javascript" src="manager/js/SRInfoManager.js"></script>
  </head>
  
  <body>
    <div class="div_from_aoto" style="width: 500px;">
  	<form id="upInfo">
	  <DIV class="control-group" style="float: left:20px">
	            <label class="laber_from">旧密码</label>
	            <DIV  class="controls" ><INPUT class="input_from" name="oldPassword" id="oldPassowrd"type="password" ></DIV>
	        </DIV>
	        <DIV class="control-group">
	            <LABEL class="laber_from">新密码</LABEL>
	            <DIV  class="controls" ><INPUT class="input_from" name="password"id="password"type="password" ></DIV>
	        </DIV>
	        <DIV class="control-group">
	            <LABEL class="laber_from" >确认密码</LABEL>
	            <DIV  class="controls" ><INPUT class="input_from" id="password2"type="password" ></DIV>
	        </DIV>
	        <div style="padding-left: 135px;float: left; top=10px;padding-bottom: 20px">
		            <input type="button" name="updatePwInfo_btn" id="button_logo" class="button_logo" value="确定"/>
		        </div>
	       </form>
	       </div>
  </body>
</html>
