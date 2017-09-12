<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>注册</title>
</head>
<body>
 
<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
<%
	request.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String password_true = request.getParameter("password_true");
	String phone=request.getParameter("phone");
	String selectSQL = "Select Username From Login";
	ResultSet rs = db.executeQuery(selectSQL);
	boolean existname = true;
	while(rs.next())
	{
		if(username.equals(rs.getString(1)))
		{
			existname = false;
			out.println("<script language='javaScript'> alert('用户名已存在，点击确定回到注册页面。');</script>");
			response.setHeader("refresh", "1;url=GetInfomation.jsp");
		}
	}
	if(existname)
	{
		if(password_true.equals(password))
		{
			String sql="insert into Login(Username,Password,mobile) values('"+username+"','"+password+"','"+phone+"')";
			int i=db.executeUpdate(sql);
			if(i==1)
			{
				out.println("<script language='javaScript'> alert('注册成功,点击确定跳转到主页!');</script>");
				response.setHeader("refresh","0;url=Login.jsp");
			}
			else
			{
				out.println("<script language='javaScript'> alert('注册失败，点击确定返回添加页面！');</script>");
				response.setHeader("refresh","0;url=GetInfomation.jsp");
			}
		}
		else
		{
			out.println("<script language='javaScript'> alert('密码不一致，请重新填写。');</script>");
			response.setHeader("refresh", "1;url=GetInfomation.jsp");
		}
	}
	db.close();
%>
</jsp:useBean>
</body>
</html>