<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆判断</title>
</head>
<body>

<!--  
String rand = (String)session.getAttribute("rand"); 
String CheckCode = request.getParameter("CheckCode"); 
if(!(rand.equals(CheckCode))) 
{
 	response.sendRedirect("Login.jsp"); 
}
-->

<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
	<%
		request.setCharacterEncoding("UTF-8");
		String user = request.getParameter("username");
		
		String password = request.getParameter("password");
		String sql = "Select * From Login";
		ResultSet rs = db.executeQuery(sql);
		boolean userFlag = false;
		boolean pwFlag = false;
		while(rs.next())
		{
			if(user.equals(rs.getString(1)))
			{
				userFlag = true;
				if(password.equals(rs.getString(2)))
				{
					pwFlag = true;
					session.setAttribute("user", user);
					response.setHeader("refresh", "0;url = adminMain.jsp");
					break;
				}
			}
			if(user.equals("admin"))
			{
				userFlag = true;
				if(password.equals(rs.getString(2)))
				{
					session.setAttribute("user", user);
					pwFlag = true;
					response.setHeader("refresh", "0;url = adminMain.jsp");
					break;
				}
			}
		}
		if(!userFlag)
		{
			out.println("<script language='javaScript'> alert('用户不存在，请注册');</script>");
			response.setHeader("refresh", "0;url = Login.jsp");
		}
		else if(!pwFlag)
		{
			out.println("<script language='javaScript'> alert('密码错误');</script>");
			response.setHeader("refresh", "0;url = Login.jsp");
		}
		else
		{
		}
		db.close();
	%>
</jsp:useBean>
</body>
</html>