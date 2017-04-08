<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="manager/js/jquery.js"></script>
	<script type="text/javascript" src="manager/js/SRInfoManager.js"></script>
	
	<link rel="stylesheet" href="manager/css/queryUser.css" type="text/css"/>

	<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css" type="text/css" media="screen" />
  </head>
  
  <body>
  <%String id = request.getParameter("id"); %>
	  <div style="padding-top: 0px;" class="rightinfo">
		  <div class="search" style="padding-bottom: 10px">
		  <form id="queryInfo">
		  		<div style="float: left;">
		            <label>学号</label>
		             <input name=id id=hidden type="hidden" value="<%=id%>">
		            <INPUT name="sno" style="padding-left: 4px;width: 150px" class="input_from" type="text" placeholder="请输入要查询的学号">
		        </div>
		        <div style="padding-left: 5px;float: left;">
		            <label>姓名</label>
		            <INPUT name="name" style="padding-left: 4px;width: 150px" class="input_from" type="text" placeholder="请输入要查询的姓名">
		        </div>
		          <div style="padding-left: 20px;float: left;padding-bottom: 20px">
		            <input type="button" name="queryInfo_btn" id="button_logo" class="button_logo" value="确定"/>
		        </div>
		        </form>
		  </div>
			<table style="padding-left: 5px" class="tablelist">
				<thead>
					<tr>
						<th><input name="selectAll" type="checkbox" />
						</th>
						<th>学号</th>
						<th>姓名</th>
						<th>性别</th>			
						<th>地址</th>
						<th>电话号码</th>
						<th>院系</th>
						<th>详细信息</th>
						<th>删除</th>
					</tr>
				</thead>
				<tbody id="table_tbody">
			</table>
			<br/>
			<div style="padding-right: 20px;float: right;top:10px;padding-bottom: 20px">
		            <input type="button" name="delCheckedInfo_btn" id="button_logo" class="button_logo" value="删除选中"/>
		        </div>
			<div class="pagin">
			<div style="font-size: 13px">
				共<i class="blue" name="sum">1256</i>条记录，当前显示第&nbsp;<i name="page" class="blue">2&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a name="last" href="javascript:;"><span
						class="pagepre"></span>
				</a>
				</li>
				<li class="paginItem">
				<select style="height: 30px;width: 50px" name="select">
					<option>1</option>
					<option>1</option>
					<option>1</option>
					<option>1</option>
				</select>
				</li>
				<li class="paginItem"><a name="next" href="javascript:;"><span
						class="pagenxt"></span>
				</a>
				</li>
			</ul>
		</div>
		</div>
  </body>
</html>
