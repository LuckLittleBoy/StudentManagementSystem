<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>提示</title>
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
//String username = session.getAttribute("user").toString();
String submit = request.getParameter("submit");

String psw = request.getParameter("psw");
String sql = "update Login set Password = '" + psw + "' where Username = '" + session.getAttribute("user") + "'";
System.out.println(sql);
int i = db.executeUpdate(sql);
if(i==1)
{
	out.println("<script language='javaScript'> alert('修改成功');</script>");
	//response.setHeader("refresh", "1;url=Login.jsp");
}
else
{
	out.println("<script language='javaScript'> alert('修改失败');</script>");
	//response.setHeader("refresh", "1;url=adminMain.jsp");
}
db.close();
%>
</jsp:useBean>
</body>
</html>