$(function() {
			
		});
function click() {
	/*$("[name=login]").bind("click", login);*/
}


//修改管理员密码
function updPwd(){
	
	var password=$("#password").val();
	
	$.post("UpdPwdServlet", {"password":password}, function(data, stuct) {
			
		if(data!=null&&data!="null")
		
			alert("success!");
			
		},"json");
	
}