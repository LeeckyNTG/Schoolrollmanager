$(function() {
			click();
			seleUserById();
		});
function click() {
	 $("[name=uptButton]").bind("click", updUserById);
}
//根据id查询user
function seleUserById() {
	
	var thisURL = document.URL;
	var getval = thisURL.split('?')[1];
	var userId = getval.split("=")[1];
	
	$.post("QueryUserServlet",{userId:userId}, function(data, stuct) {

		$("#username").val(data[0].username);
		$("#password").val(data[0].password);
		$("#name").val(data[0].name);
		$("#userId").val(data[0].id);
	},"json");
}

//根据id修改user
function updUserById(){
	var userForm=$("#updUserFrom").serialize();
	$.post("UpdUserServlet",userForm, function(data, stuct) {
		
		window.location.href="manager/userInfo.jsp";
		
	});
	
	
}