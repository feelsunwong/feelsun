<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	function validate(){
		var name  = $("#name").val();
		var age   = $("#age").val();
		//var hobby = document.getElementsByName("hobby").;
		
		//$("#message").html(hobby);
		if(name==null||name==''){
			$("#message").html("请输入姓名!");
			return false;
		}
		if(name.length<3||name.length>10){
			$("#message").html("输入的姓名要在3到10位");
			return false;
		}
		if(age==null||age==''){
			$("#message").html("请输入年龄!");
			return false;
		}
		
		var i = 0;
		$("input[name='hobby'][checked]").each(function(){
			alert($(this));
			if($(this).attr("checked")=="true") i++;
		})
		if(i < 1){
			$("#message").html("请至少选中一个爱好");
			return false;
		} 
		
		$("#myform").submit();	
/* 		$.post({
			url     :  '${pageContext.request.contextPath}/user/add.do',
			data    :  $("#myform").serialize(),
			success : function(result){
				$("#message").html("success");
			}
		}) */
		
	}
</script>
</head>
<body>
	<form id="myform" action="${pageContext.request.contextPath}/user/add.do">
	  <p id="message" style="color:red"></p>
		姓名:<input type="text" name="name" id="name"><br/>
		年龄:<input type="text" name="age" id="age"><br/>
		性别:<input type="radio" name="sex" value="1" checked="checked">男
		    <input type="radio" name="sex" value="2">女<br/>
		兴趣:<input type="checkbox" name="hobby" value="1">足球
			<input type="checkbox" name="hobby" value="2">蓝球
			<input type="checkbox" name="hobby" value="3">排球
			<input type="checkbox" name="hobby" value="4">乒乓球<br/>
		地址:<select name="addr">
				<option value="sh">上海</option>
				<option value="bj">北京</option>
				<option value="gz">广州</option>
				<option value="wh">武汉</option>
			</select><br/>
		<input type="button" value="提交" onclick="return validate();">
		<input type="reset" value="重置">
	</form>
</body>
</html>