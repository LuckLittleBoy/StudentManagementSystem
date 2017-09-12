<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索</title>
</head>
<style type = "text/css">
body
{
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color:#EEFFFB;
	margin: 0px;
}
</style>
<body>
<script type="text/javascript">
function validate()
{
 	if(document.form.sno.value==""){
    	window.alert("学号不能为空！");
    	return false;
	}
  	return true;
}
</script>
请输入学生学号：
<form name="form"  method = "post" action="xianshi.jsp" target="main">
<input type = "text" name = "sno" style="height:18px; width:150px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;" />
<input type = "submit" value = "搜索" onclick="return validate()" />
</form>
</body>
</html>