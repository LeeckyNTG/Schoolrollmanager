$(function() {
			queryUser();
		});
function click() {
	/*$("[name=login]").bind("click", login);*/
}


//查询所有user
function queryUser() {
	
	$("#table_tbody").replaceWith("<tbody id=\"table_tbody\"></tbody>");

	$.post("QueryUserServlet", null, function(data, stuct) {
		if (data && data != "null") {
			

			$.each(data, function(i, data) {

				$("#table_tbody").append("<tr>" +
								"<td>"+data.id+"</td>" +
								"<td>"+data.username+"</td>" +
								"<td>"+data.password+"</td>" +
								"<td>"+data.name+"</td>" +
								"<td><a href=\"manager/updataUser.jsp?userId="+data.id+"\">修改</a>&nbsp;&nbsp;&nbsp;" +
										"<a href=\"delUserServlet?userId="+data.id+"\">删除</a></td></tr>");
						});

		} else {

			alert("你输入的用户名与密码不匹配，请重新输入！");
		}

	},"json");
}