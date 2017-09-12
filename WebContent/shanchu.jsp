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
String sno = request.getParameter("sno");
String deleteSQL = "delete from Student where sno = '"+sno+"'";
int i = db.executeUpdate(deleteSQL);
if(i==1)
{
	out.println("<script language='javaScript'> alert('删除成功');</script>");
	response.setHeader("refresh", "1;url=chakan.jsp");
}
db.close();
%>
</jsp:useBean>
</body>
</html>