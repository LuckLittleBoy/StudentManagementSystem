<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>提示</title>
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
<form name="form"  method = "post" action="add.jsp">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
   <tr>
        <td width="25%" height="20"><div align="center"><span class="STYLE3">学号</span></div></td>
        <td width="75%" height="20"><input type="text" name = "sno" value = "请填写学号"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;"  onfocus="this.value='';" onblur="if(this.value.length < 1) this.value='请填写学号';"></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">姓名</span></div></td>
        <td height="20"><input type="text" name = "name" value = "请填写姓名"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;"  onfocus="this.value='';" onblur="if(this.value.length < 1) this.value='请填写姓名';"></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">性别</span></div></td>
        <td height="20"><input type="text" name = "sex" value = "请填写性别"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;"  onfocus="this.value='';" onblur="if(this.value.length < 1) this.value='请填写性别';"></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">年龄</span></div></td>
        <td height="20"><input type="text" name = "age" value = "请填写年龄"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;"  onfocus="this.value='';" onblur="if(this.value.length < 1) this.value='请填写年龄';"></td>
   </tr>
   <tr>
    	<td height="20"><div align="center"><span class="STYLE3">手机号</span></div></td>
        <td height="20"><input type="text" name = "number" value = "请填写手机号"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;"  onfocus="this.value='';" onblur="if(this.value.length < 1) this.value='请填写手机号';"></td>
   </tr>
   <tr>
		<td height="50"><div align="center"><input type = "submit" value = "添加" style="height:20px; width:50px; border:solid 1px #cadcb2; font-size:13px; color:#81b432;"></div></td>
        <td height="50"><div align="left"><input type = "button" style="height:20px; width:50px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;" onclick = "window.location.href='addStudent.jsp'" value = "重置"></div></td>
   </tr>
</table>
</form>
</body>
</html>