$(function() {
		click();
	});
	function click() {
		$("[name=login]").bind("click", login);
	}
	//用户登录
	function login() {

		var loginForm = $("#loginForm").serialize();
		
		var position=$("#position").val();

		$.post("LoginServlet", loginForm, function(data, stuct) {

		
			if (data&&data!="null") {
			
				if(position=="教师"){
					window.location.href="manager/index.jsp";
				}else{
					window.location.href="manager/supper.jsp";
				}
				
			} else {

				alert("你输入的用户名与密码不匹配，请重新输入！");
			}

		});
	}
	
	
	function reeset(){
		
		document.getElementById("username").value="";
		document.getElementById("password").value="";
	}