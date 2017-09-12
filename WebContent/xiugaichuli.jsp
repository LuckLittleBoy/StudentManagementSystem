<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>提示</title>
</head>
<body>
 
<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
<%
	request.setCharacterEncoding("UTF-8");
	String sno=request.getParameter("sno");
	String name=request.getParameter("name");
	String sex = request.getParameter("sex");
	String age=request.getParameter("age");
	String number=request.getParameter("number");
	
	String insertSQL = "insert into Student values('"+sno+"','"+name+"','"+sex+"','"+age+"','"+number+"')";
	int j = db.executeUpdate(insertSQL);
	if(j==1)
	{
		out.println("<script language='javaScript'> alert('修改成功');</script>");
		response.setHeader("refresh", "1;url=chakan.jsp");
	}
	else
	{
		out.println("<script language='javaScript'> alert('修改失败');</script>");
		response.setHeader("refresh", "1;url=chakan.jsp");
	}
	db.close();
%>
</jsp:useBean>
</body>
</html>