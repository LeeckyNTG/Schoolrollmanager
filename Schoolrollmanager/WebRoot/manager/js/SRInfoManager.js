$(function() {
			SCInfoManager();
		});
function SCInfoManager() {
	$("[name=addSRInfo]").bind("click", addSR);
	$("[name=SCManager]").bind("click", manager);
	$("[name=SCManager1]").bind("click", manager1);
	$("[name=querySRInfo]").one("click", querySR);
	$("[name=select]").bind("change", selectNumber);
	$("[name=last]").bind("click", lastPage);
	$("[name=next]").bind("click", nextPage);
	$("#query").bind("click",queryDetailInfo);
	$("#del").bind("click", delInfo);
	$("[name=updateInfo_btn]").bind("click", updateInfo_btn);
	$("[name=queryInfo_btn]").bind("click",queryInfo_btn);
	//全选
	$("[name=selectAll]").bind("click",selectAll);
	//删除选中
	$("[name=delCheckedInfo_btn]").bind("click",delCheckedInfo_btn);
	

}
// 点击学籍管理左上显示学籍管理
function manager(){
	$("[name=manager]").html("学籍管理");
}

function manager1(){
	$("[name=manager]").html("系统管理");
}
// 学籍录入

function addSR() {
	$.post("manager/SRManager/addSRInfo.jsp", function(data) {
		$(".mian_content").empty().append(data);
		$("[name=addInfo_btn]").bind("click", addSRInfo);
			// 表单中内容样式渲染方法，不使用该方法表单无样式，会非常丑！
			// niceforms插件的初始化方法，用来渲染所有的表单控件样式
		}, "text");
}

function addSRInfo() {
	var flag=true;
	var SRInfo = $("#userInfo").serialize();
	var sno = $("#sno").val();
	var sid = $("#sid").val();
	var sName = $.trim($("#sName").val());
	var sAddress = $.trim($("#sAddress").val());
	var sBorn = $("#sBorn").val();
	var sNation = $("#sNation").val();
	var sTel = $("#sTel").val();
	var sMajor = $("#sMajor").val();
	var sAdmissionDate = $("#sAdmissionDate").val();
	var sPostcode = $("#sPostcode").val();
	var sGraduateSchool = $("#sGraduateSchool").val();
	var r = new RegExp("^[1-2]\\d{3}-(0?[1-9]||1[0-2])-(0?[1-9]||[1-2][1-9]||3[0-1])$");// 判断时间格式
	var r1 = /^1[34578]\d{9}$/;// 判断手机号码
	var r2 = /^[0-9][0-9]{5}$/;// 判断邮政编码
	if (sno.length != 9 || isNaN(sno)) {
		alert("学号输入错误!");
	} else if (sid.length != 18 || isNaN(sid)) {
		alert("身份证输入错误!");
	} else if (!sName) {
		alert("请输入姓名!");
	} else if (!sAddress) {
		alert("请输入地址!");
	} else if (!r.test(sBorn)) {
		alert("请输入正确的出生年月时间格式!");
	} else if (!sNation) {
		alert("请输入民族!");
	} else if (!r1.test(sTel)) {
		alert("请输入正确的电话号码!");
	} else if (!sMajor) {
		alert("请输入专业!");
	} else if (!r.test(sAdmissionDate)) {
		alert("请输入正确的时间格式!");
	} else if (!r.test(sAdmissionDate)) {
		alert("请输入正确的入学时间格式!");
	} else if (!r2.test(sPostcode)) {
		alert("请输入正确的邮政编码!");
	} else if (!sGraduateSchool) {
		alert("请输入毕业高中!");
	}else{
		$.post("AddSRInfoSlt1", {sno:sno}, function(data) {
		if (data != null) {
			alert("学号已存在！");
			flag=false;
		}else{
			
				$.post("AddSRInfoSlt", SRInfo, function(data) {
							if (data != null&&data!="null"&data!="") {
								alert("添加成功！");
								 querySR();
							}
						}, "json");
		}
	}, "json");
}
	}
	

// 查询学籍信息
function querySR() {
	$.post("manager/SRManager/querySRInfo.jsp", function(data) {
		$(".mian_content").empty().append(data);
		querySRInfo();
	}, "text");

}
// 管理员查询
var data1=null;
var pageNum = 0;
var sum = 0;
var page = 1;
//AJAX同步传输数据
function querySRInfo() {
	data1=null;
	sum=0;
	page=1;
	$.ajax({
				url : 'QuerySRInfo',
				type : 'post',
				dataType: "json",
				async : false,// 使用同步的方式,true为异步方式
				success : function(data) {
					data1 = data;
				}
			});
	pageSetting();
}
//设置页数的参数
function pageSetting(){
	$.each(data1, function() {
				sum++;
			});
	pageNum = sum%8==0?sum/8:parseInt(sum/8)+1;
	$("[name=sum]").html(sum);
	$("[name=page]").html(page);
	query();
}
// 下拉的页数
function selectSum() {
	$("[name=select]").empty();
	var i = 1;
	while (i <= pageNum) {
		if (i == page) {
			$("[name=select]").append("<option selected>" + i + "</option>");
		} else {
			$("[name=select]").append("<option >" + i + "</option>");
		}
		i++;
	}
}

// 每页显示的数据
function query() {
	var pagesize = page * 8;
	var i = 1;
	$("#table_tbody").empty();
	$.each(data1, function() {
				if (pagesize - 7 <= i && i <= pagesize){
					$("#table_tbody").append("<tr>"
							+ "<td><input id=key name=key  type=checkbox value="
							+ this.id + "  /></td>" + "<td>" + this.sno + "</td>"
							+ "<td>" + this.name + "</td>" + "<td>" + this.sex
							+ "</td>" + "<td>" + this.address + "</td>"
							+ "<td>" + this.nation + "</td>" + "<td>"
							+ this.major + "</td>"
							+ "<td><a href=javascript:void(0) onclick=queryDetailInfo()  id=query name=query value="+this.id+">查看详细信息</a>"+"</td>"
							+ "<td><a href=javascript:void(0) onclick=delInfo() id=del name=del value="+this.id+">删除该信息</a>"+"</td>"
							+"</tr>");
				} else if (i >= pagesize) {
					return false;
				}
				i++;
			});
		selectSum();
}

// 下拉选择页数
function selectNumber() {
	page= $(this).children('option:selected').val();
	$("[name=page]").html(page);
	query();
}

// 下一页
function nextPage() {
	 page = $("[name=page]").html();
	if (page == pageNum) {
		alert("已经是最后一页了！");
	} else {
		var page1=parseInt(page)+1;
		$("[name=page]").html(page1);
		page=parseInt(page)+1;
		query();
	}

}
function lastPage() {
	page = $("[name=page]").html();
	if (page ==	1) {
		alert("已经是第一页了！");
	} else {
		var page1 = page - 1;
		$("[name=page]").html(page1);
		page-=1;
		query();
	}
}
function queryDetailInfo(){
	var s = $("#query").parent().html();
	var s1 = s.split('value')[1];
	var s2 = s1.split('=')[1];
	var s3 = s2.split('>')[0];
	var s4 = s3.substring(1,s3.length-1);
	$.post("manager/SRManager/updateSRInfo.jsp?id="+s4,function(data){
		$(".mian_content").empty().append(data);
		queryDetailInfo1();
	});
}
function queryDetailInfo1(){
	var id = $("#hidden").val();
	$.post("QueryDetailInfoSlt",{id:id},function(data){
		$("#sno").attr("value",data[0].sno);
		$("#sid").attr("value",data[0].idcard);
		$("sex").val(data[0].sex);
		$("#sxz").val(data[0].xz);
		$("#sName").attr("value",data[0].name);
		$("#sAddress").attr("value",data[0].address);
		$("#sBorn").attr("value",data[0].born);
		$("#sNation").attr("value",data[0].nation);
		$("#sTel").attr("value",data[0].tel);
		$("#sMajor").attr("value",data[0].major);
		$("#sAdmissionDate").attr("value",data[0].admissionTime);
		$("#sPostcode").attr("value",data[0].postcode);
		$("#sGraduateSchool").attr("value",data[0].graduateschool);
		$("#politicaloutlook").val(data[0].politicaloutlook);
	},"json");
}

function delInfo(){
	var s = $("#del").parent().html();
//	var s1 = s.substring(s.length-12,s.length-11);
	var s1 = s.split('value')[1];
	var s2 = s1.split('=')[1];
	var s3 = s2.split('>')[0];
	$.post("DelSRInfoSlt",{id:s3},function(data){
		if(data!=null){
			alert("删除成功！");
			querySR();
		}
	});
}
function updateInfo_btn(){
	var formInfo = $("#update").serialize();
	var sno = $("#sno").val();
	var sid = $("#sid").val();
	var sName = $.trim($("#sName").val());
	var sAddress = $.trim($("#sAddress").val());
	var sBorn = $("#sBorn").val();
	var sNation = $("#sNation").val();
	var sTel = $("#sTel").val();
	var sMajor = $("#sMajor").val();
	var sAdmissionDate = $("#sAdmissionDate").val();
	var sPostcode = $("#sPostcode").val();
	var sGraduateSchool = $("#sGraduateSchool").val();
	var r = new RegExp("^[1-2]\\d{3}-(0?[1-9]||1[0-2])-(0?[1-9]||[1-2][1-9]||3[0-1])$");// 判断时间格式
	var r1 = /^1[34578]\d{9}$/;// 判断手机号码
	var r2 = /^[0-9][0-9]{5}$/;// 判断邮政编码
	if (sno.length != 9 || isNaN(sno)) {
		alert("学号输入错误!");
	} else if (sid.length != 18 || isNaN(sid)) {
		alert("身份证输入错误!");
	} else if (!sName) {
		alert("请输入姓名!");
	} else if (!sAddress) {
		alert("请输入地址!");
	} else if (!r.test(sBorn)) {
		alert("请输入正确的出生年月时间格式!");
	} else if (!sNation) {
		alert("请输入民族!");
	} else if (!r1.test(sTel)) {
		alert("请输入正确的电话号码!");
	} else if (!sMajor) {
		alert("请输入专业!");
	} else if (!r.test(sAdmissionDate)) {
		alert("请输入正确的时间格式!");
	} else if (!r.test(sAdmissionDate)) {
		alert("请输入正确的入学时间格式!");
	} else if (!r2.test(sPostcode)) {
		alert("请输入正确的邮政编码!");
	} else if (!sGraduateSchool) {
		alert("请输入毕业高中!");
	}
	$.post("UpdateSRInfoSlt",formInfo,function(data){
		if(data!=null){
			querySR();
		}
	});
}
//条件查询
function queryInfo_btn(){
	data1=null;
	sum=0;
	page=1;
	var formInfo = $("#queryInfo").serialize();
	$.ajax({	data:formInfo,
				url : 'QuerySRInfo',
				type : 'post',
				dataType: "json",
				async : false,// 使用同步的方式,true为异步方式
				success : function(data) {
					data1 = data;
				}
			});
	pageSetting();
}

//全选
function selectAll(){
	var allche = document.getElementById("allche");
	var uidArr = document.getElementsByName("uid");
	var key = $("[name=key]");
	if(this.checked){
		for(var i=0;i<key.length;i++){
			key[i].checked=this.checked;
		}
	}else{
		for(var i=0;i<key.length;i++){
			key[i].checked=this.checked;
		}
	}
}
//删除选中
function delCheckedInfo_btn(){
	var strCheck="";
	var flag = false;
	var key = $("[name=key]");
	for(var i=0;i<key.length;i++){
		if(key[i].checked){
			strCheck = strCheck+"#"+key[i].value;
			flag=true;
		}
	}
	if(flag){
		$.post("DelSomeSRInfoSlt",{strCheck:strCheck},function(data){
			if(data!=null){
				alert("删除成功！");
				querySRInfo();
			}
		},"json");
	}else{
		alert("删除失败！");
	}
}
//修改密码
function updatePassword(){
	$.post("manager/SRManager/updatePassword.jsp",function(data){
		$(".mian_content").empty().append(data);
		$("[name=updatePwInfo_btn]").bind("click",updatePsBtn);
	});
}
function updatePsBtn(){
	var formInfo = $("#upInfo").serialize();
	var ps = $("#password").val();
	var ps2 = $("#password2").val();
	if(ps!=ps2){
		alert("两次密码不一致！");
	}else if(!ps){
		alert("密码不为空！");
	}
	$.post("UpdatePsSlt",formInfo,function(data){
		if(data=="1"){
			alert("旧密码不正确！");
		}else if(data=="2"){
			alert("密码修改成功！");
			window.location.href="manager/index.jsp";
		}
	},"json");
}

//退出
function quit(){
	$.post("QuitSlt");
}

