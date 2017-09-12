<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改</title>
<style type="text/css">

body {
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
<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
<%
String name=null,sex=null,age=null,number=null;
String sno = request.getParameter("sno");
String sql="select * from Student where sno = '" + sno + "'";
ResultSet rs = db.executeQuery(sql);
if(rs.next())
{
	 name=rs.getString(2);
	 sex=rs.getString(3);
	 age=rs.getString(4);
	 number=rs.getString(5);
}

String deleteSQL = "delete from Student where sno = '"+sno+"'";
int i = db.executeUpdate(deleteSQL);
db.close();
%>

<form name="form"  method = "post" action="xiugaichuli.jsp">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
   <tr>
        <td width="25%" height="20"><div align="center"><span class="STYLE3">学号</span></div></td>
        <td width="75%" height="20"><input type="text" name = "sno" value = "<%=sno %>" style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">姓名</span></div></td>
        <td height="20"><input type="text" name = "name" value = "<%=name %>"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">性别</span></div></td>
        <td height="20"><input type="text" name = "sex" value = "<%=sex %>"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
        <td height="20"><div align="center"><span class="STYLE3">年龄</span></div></td>
        <td height="20"><input type="text" name = "age" value = "<%=age %>"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
    	<td height="20"><div align="center"><span class="STYLE3">手机号</span></div></td>
        <td height="20"><input type="text" name = "number" value = "<%=number %>"  style="height:15px; width:150px; border:solid 1px #cadcb2; font-size:13px; color:#999999;" /></td>
   </tr>
   <tr>
		<td height="50"><div align="center"><input type = "submit" value = "修改" style="height:20px; width:50px; border:solid 1px #cadcb2; font-size:13px; color:#81b432;"></div></td>
   </tr>
</table>
</form>
</jsp:useBean>
</body>
</html>