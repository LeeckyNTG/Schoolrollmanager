<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="manager/utilLib/bootstrap.min.css" type="text/css" media="screen" />
	<link href="manager/css/StockManage.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="manager/js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="manager/js/userInfo.js"></script>

  </head>
  
  <body onunload="queryUser()">
    <div style="padding-top: 0px;" class="rightinfo">
	  
			<table style="padding-left: 5px;width: 80%;font-size: 50px" align="center" class="tablelist">
				<thead>
					<tr>
						<th>用户编号</th>
						<th>用户名</th>			
						<th>密码</th>
						<th>姓名</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="table_tbody">
					<tr><td>123</td><td>123</td><td>123</td><td>123</td><td><a>修改</a>&nbsp;&nbsp;&nbsp;<a>删除</a></td></tr>
				</tbody>
			</table>
			
		</div>
  </body>
</html>
