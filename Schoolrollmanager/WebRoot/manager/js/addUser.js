$(function() {
			queryUser();
		});
function click() {
	/*$("[name=login]").bind("click", login);*/
}


//添加用户
function addUser(){
	var addFrom=$("#addUserFrom").serialize();
	if(cheakUsername()&&cheakPassword()&&cheakrePassword()&&cheakName()){
		$.post("AddUserServlet", addFrom, function(data, stuct) {
			
			window.location.href="manager/userInfo.jsp";
			
		},"json");
	}
}



//检查用户名格式
function cheakUsername(){
	var username=$("#username").val();
	var regExp =/^[A-Za-z0-9]+$/;
	
	if(!regExp.test(username)){
		alert("用户名输入有误！");
		return false;
	}else{
		if(username.length>10||username.length<5){
			alert("用户名输入长度不符合规范！");
			return false;
		}
		else{
			return true;
		}
	}
}

//检查密码格式
function cheakPassword(){
	var password=$("#password").val();
	var regExp =/^[A-Za-z0-9]+$/;
	
	if(!regExp.test(password)){
		alert("密码输入有误！");
		return false;
	}else{
		if(password.length>10||password.length<5){
			alert("密码输入长度不符合规范！");
			return false;
		}else{
			return true;
		}
	}
}

//检查再次输入密码
function cheakrePassword(){
	var password=$("#password").val();
	var repassword=$("#repassword").val();
	if(password!=repassword){
		alert("两次密码不匹配！");
	}else{
		return true;
	}
}

//检查输入姓名
function cheakName(){
	var name=$("#name").val();

		if(name.length>10||name.length<1){
			alert("姓名输入长度不符合规范！");
			return false;
		}else{
			return true;
		}
	
}