<%@page import="com.bean.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>学生学籍管理系统</title>

	<link rel="stylesheet" href="manager/css/index.css" type="text/css" media="screen" />
	<script type="text/javascript" src="manager/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="manager/js/tendina.min.js"></script>
	<script type="text/javascript" src="manager/js/common.js"></script>
	<script type="text/javascript" src="manager/js/SRInfoManager.js"></script>
  </head>
  
  <body onload="querySR()">

     <!--顶部-->
    <div class="layout_top_header">
            <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">学生学籍管理系统</h1></span></div>
            <div id="ad_setting" class="ad_setting">
                <a class="ad_setting_a" href="javascript:; ">
                   <i class="icon-user glyph-icon" style="font-size: 20px">
                   
                   </i>
                    
                    <%User user=(User)request.getSession().getAttribute("user"); %>
                    <%=user.getUsername() %>
                    
                    <i class="icon-chevron-down glyph-icon"></i>
                    
                </a>
                <ul class="dropdown-menu-uu" style="display: none" id="ad_setting_ul">
                    <li class="ad_setting_ul_li"> <a onclick="updatePassword()"  target="menuFrame" name="updatePassword" id="updatePassword"><i class="icon-cog glyph-icon"></i>修改密码 </a> </li>
                    <li class="ad_setting_ul_li"> <a href="manager/login.jsp"><i class="icon-signout glyph-icon"></i>退出 </a> </li>
                </ul>
            </div>
    </div>
    <!--顶部结束-->
    <!--菜单-->
    <div class="layout_left_menu">
        <ul id="menu">
            <li class="childUlLi">
                <a href="javascript:void(0)" name="SCManager" > <i class="glyph-icon icon-home"></i>学籍管理</a>
                <ul>
                    <li><a name="addSRInfo"href="javascript:void(0)" ><i class="glyph-icon icon-chevron-right"></i>学籍录入</a></li>
                    <li><a name="querySRInfo"href="javascript:void(0)"><i class="glyph-icon icon-chevron-right"></i>学籍信息查询</a></li>
                </ul>
            </li>
 
            <li class="childUlLi">
                <a href="javascript:void(0)" name="SCManager1" > <i class="glyph-icon icon-reorder"></i>系统管理</a>
                <ul>
                    <li><a href="javascript:void(0)" target="menuFrame" id="updatePassword1" name="updatePassword1" onclick="updatePassword()"><i class="glyph-icon icon-chevron-right"></i>修改密码</a></li>
                    <li><a href="manager/login.jsp"><i class="glyph-icon icon-chevron-right"></i>退出</a></li>
                </ul>
            </li>
        </ul>

		
	</div>
    <!--菜单-->
    <div id="layout_right_content" class="layout_right_content">
        <div class="route_bg">
            <a href="javascript:void(0)">主页</a><i class="glyph-icon icon-chevron-right"></i>
            <a href="javascript:void(0)" name="manager">学籍管理</a>
        </div>
        <div class="mian_content">
            <div id="page_content">
                <iframe id="menuFrame" name="menuFrame" src="manager/SRManager/querySRInfo.jsp" style="overflow:visible;"
                        scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>
    <div class="layout_footer">
        <p>Copyright © 2016 - 南方黑马</p>
    </div>
  </body>
</html>
