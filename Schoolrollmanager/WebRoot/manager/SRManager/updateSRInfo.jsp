<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addSRInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="manager/js/jquery.js"></script>
	<script type="text/javascript" src="manager/js/SRInfoManager.js"></script>
	<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="manager/css/add.css" type="text/css" media="screen" />
  </head>
  
  <body> <div class="div_from_aoto" style="width: 1000px;">
  	<% String id = request.getParameter("id");
  	 %>
  	 <FORM id="update" name="update">
    	<!--第一行  -->
    	<div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <input name=id id=hidden type="hidden" value="<%=id%>">
	            <INPUT class="input_from" name="sno" id="sno"type="text" placeholder=" 请输入学号"></font></DIV>
	        </DIV>
	        <DIV style="float: right top: 0px">
	            <DIV  class="controls" >身份证号&nbsp;&nbsp;&nbsp;<INPUT class="input_from" name="sid"id="sid"type="text" placeholder=" 请输入身份证号"></DIV>
	        </DIV>
        </div>
        <!--第二行  -->
        <div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <INPUT class="input_from" name="sName" id="sName"type="text" placeholder=" 请输入姓名"></DIV>
	        </DIV>
		     <DIV style="float: right top: 0px"class="control-group">
		            <DIV  class="controls" >性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	              	  <SELECT class="input_select" name="sex">
	                    <OPTION selected>男</OPTION>
	                    <OPTION>女</OPTION>
	                </SELECT>
	                </DIV>
	        </DIV>
        </div>
        
        
         <!--第三行  -->
          <div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">住址&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <INPUT class="input_from" name="sAddress" id="sAddress"type="text" placeholder=" 请输入住址"></DIV>
	        </DIV>
		      <DIV style="float: right top: 0px">
	            <DIV  class="controls" >出生年月&nbsp;&nbsp;
	            	<INPUT class="input_from" name="sBorn"id="sBorn"type="text" placeholder="请输入出生年月(xxxx-xx-xx)">
	            	</DIV>
	        </DIV>
        </div>
          <!--第四行  -->
          <div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">民族&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <INPUT class="input_from" name="sNation" id="sNation"type="text" placeholder=" 请输入民族"></DIV>
	        </DIV>
		      <DIV style="float: right top: 0px">
	            <DIV  class="controls" >电话&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            	<INPUT class="input_from" name="sTel"id="sTel"type="text" placeholder="请输入电话号码">
	            	</DIV>
	        </DIV>
        </div>
           <!--第五行  -->
          <div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">专业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <INPUT class="input_from" name="sMajor" id="sMajor"type="text" placeholder=" 请输入专业"></DIV>
	        </DIV>
		      <DIV style="float: right top: 0px">
	            <DIV  class="controls" >入学时间&nbsp;&nbsp;
	            	<INPUT class="input_from" name="sAdmissionDate"id="sAdmissionDate"type="text" placeholder="请输入入学时间(xxxx-xx-xx)">
	            	</DIV>
	        </DIV>
        </div>
         <!--第六行  -->
          <div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">邮政编码&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <INPUT class="input_from" name="sPostcode" id="sPostcode"type="text" placeholder=" 请输入邮政编码"></DIV>
	        </DIV>
		     <DIV style="float: right top: 0px"class="control-group">
		            <DIV  class="controls" >学制&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	              	 <SELECT class="input_select" name="sxz">
                    <OPTION selected>3年</OPTION>
                    <OPTION>4年</OPTION>
                    <OPTION>5年</OPTION>
                </SELECT>
	                </DIV>
	        </DIV>
        </div>
         <!--第七行  -->
        <div style="width: 100%" class="control-group">
	        <DIV style="float: left;top: 0px">
		            <DIV  class="controls" style="float: left;">毕业高中&nbsp;
		            <div style="width: 50px;float: left;">
	            </div>
	            <INPUT class="input_from" name="sGraduateSchool" id="sGraduateSchool"type="text" placeholder=" 请输入专业"></DIV>
	        </DIV>
		        <DIV style="float: right top: 0px"class="control-group">
		            <DIV  class="controls" >政治面貌&nbsp;&nbsp;
	              		<SELECT class="input_select" name="politicaloutlook" id="politicaloutlook">
		                    <OPTION selected>团员</OPTION>
		                    <OPTION>预备党员</OPTION>
		                    <OPTION>党员</OPTION>
		                    <OPTION>群众</OPTION>
               			</SELECT>
	                </DIV>
	        </DIV>
        </div>
         <div style="padding-left: 170px;float: left;padding-bottom: 20px">
		            <input type="button" name="updateInfo_btn" id="button_logo" class="button_logo" value="确定修改"/>
		        </div>
    </FORM>
</div>
  </body>
</html>

</html>
