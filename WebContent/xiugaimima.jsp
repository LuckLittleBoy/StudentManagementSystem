<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改密码</title>
<style type="text/css">

body {
	background-color:#EEFFFB;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE3 {color: #528311; font-size: 13px; }
.STYLE4 {
	color: #42870a;
	font-size: 13px;
}

</style>
</head>
<body>
<script type="text/javascript">
function validate()
{
	
	if(document.form.psw.value==""){
  		window.alert("密码不能为空！");
  		return false;
  	}
	
	if(document.form.psw_true.value==""){
  		window.alert("确认密码不能为空！");
  		return false;
  	}
	
 	if(document.form.psw.value!=document.form.psw_true.value){
    	window.alert("密码不一致！");
    	return false;
	}
  	return true;
}
</script>

<form name="form"  method = "post" action="xiugaimima1.jsp">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
   <tr>
        <td width="20%"><div align="center"><span class="STYLE3">密码</span></div></td>
        <td width="80%"><input type="password" name = "psw"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">确认密码</span></div></td>
        <td height="20"><input type="password" name = "psw_true"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
		<td height="50"><div align="right"><input type = "submit" value = "修改" style="height:20px; width:50px; border:solid 1px #cadcb2; font-size:13px; color:#81b432;" onclick="return validate()"></div></td>
   </tr>
</table>
</form>
</body>
</html>