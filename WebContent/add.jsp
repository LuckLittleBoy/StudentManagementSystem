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
	String selectSQL = "Select sno From Student";
	ResultSet rs = db.executeQuery(selectSQL);
	boolean existsno = true;
	while(rs.next())
	{
		if(sno.equals(rs.getString(1)))
		{
			existsno = false;
			out.println("<script language='javaScript'> alert('学号已存在，点击确定回到添加页面。');</script>");
			response.setHeader("refresh", "1;url=addStudent.jsp");
		}
	}
	if(existsno)
	{
		String insertSQL = "insert into Student values('"+sno+"','"+name+"','"+sex+"','"+age+"','"+number+"')";
		int i=db.executeUpdate(insertSQL);
		if(i==1)
		{
			out.println("<script language='javaScript'> alert('添加成功,点击确定跳转到添加页面!');</script>");
			response.setHeader("refresh","0;url=addStudent.jsp");
		}
		else
		{
			out.println("<script language='javaScript'> alert('添加失败，点击确定返回添加页面！');</script>");
			response.setHeader("refresh","0;url=addStudent.jsp");
		}
	}
	db.close();
%>
</jsp:useBean>
</body>
</html>