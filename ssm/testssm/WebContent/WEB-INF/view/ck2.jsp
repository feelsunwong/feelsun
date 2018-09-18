<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function(){
		//根据属性值选中你要操作的单选按钮，设置属性值checked=checked
		//alert("${student.sex}");
		$("input[name='sex']").val(["${student.sex}"]).checked="checked";
		
		//复选按钮回显
		//${student.hobby}=1,3,4
		$("input[name='hobby']").each(function(){
			if("${student.hobby}".indexOf($(this).val())>-1)
				$(this).attr("checked","checked");
		})
		
		//下拉列表
		$("#addr").val("${student.addr}");
		
	})
</script>
</head>
<body>
			姓名:<input type="text" name="name" value="${student.name}"><br/>
			年龄:<input type="text" name="age"  value="${student.age}"><br/>
			性别:<input type="radio" name="sex" value="1">男
			    <input type="radio" name="sex" value="2">女<br/>
			兴趣:<input type="checkbox" name="hobby" value="1">足球
				<input type="checkbox" name="hobby" value="2">蓝球
				<input type="checkbox" name="hobby" value="3">排球
				<input type="checkbox" name="hobby" value="4">乒乓球<br/>
			地址:<select name="addr" id="addr">
					<option value="sh">上海</option>
					<option value="bj">北京</option>
					<option value="gz">广州</option>
					<option value="wh">武汉</option>
				</select><br/>
</body>
</html>