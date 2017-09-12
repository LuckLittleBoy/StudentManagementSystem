<%@ page import = "java.sql.*" language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 400px;
}
th, td {
	border: solid #333 1px;
	height: 20px;
}
div {
	text-align: center;
}
</style>
</head>
<body>
<script type="text/javascript">

function validate()
{
 	if(document.form3.username.value==""){
    	window.alert("用户名不能为空！");
    	return false;
	}
 	if(document.form3.phone.value==""){
  		window.alert("电话号码不能为空！");
  		return false;
  	}
 	if(document.form3.newpassword.value==""||document.form3.password_true.value==""){
  		window.alert("密码不能为空！");
  		return false;
  	}
  	return true;
}
</script>

<form name="form3" action="forgetPassword.jsp" method="post">
<table>
<caption>修改密码</caption>
  <tr>
    <th width="30%">用户名：</th>
    <td width="70%"><input name="username" style = "width:175px; height:25px;" type="text"></td>
  </tr>
  <tr>
    <th>电话号码：</th>
    <td><input name="phone" style = "width:175px; height:25px;" type="text"></td>
  </tr>
  <tr>
    <th>新密码：</th>
    <td><input name="newpassword" type="password" style = "width:175px; height:25px;"></td>
  </tr>
  <tr>
    <th>确认密码：</th>
    <td><input name="password_true" type="password" style = "width:175px; height:25px;"></td>
  </tr>
  <tr>
    <th colspan="2">
    <input type="submit" name="submit" value="修改" onclick="return validate()">
    <input type="button" onclick = "window.location.href='Login.jsp'" value="取消">
    </th>
  </tr>
</table>
</form>
<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
<%
request.setCharacterEncoding("UTF-8");
String submit=request.getParameter("submit");
if(submit!=null&&!submit.equals(""))
{
	String  username=request.getParameter("username");
	String  newpassword=request.getParameter("newpassword");
	String  phone=request.getParameter("phone");
	String  password_true=request.getParameter("password_true");
	String sql="select * from DCSUser";
	ResultSet rs0 = db.executeQuery(sql);
	String selectsql=null;
	String updatesql=null;
	ResultSet rs=null;
	boolean userFlag = false;
	
	while(rs0.next())
	{
		if(username.equals(rs0.getString(1)))
		{
			userFlag = true;
			selectsql="select * from DCSUser where name = '"+username+"'";
			updatesql="update DCSUser set psw = '"+newpassword+"' where name = '"+username+"'";
			rs = db.executeQuery(selectsql);
			break;
		}
	}
	if(!userFlag)
	{
		out.println("<script language='javaScript'> alert('用户不存在，请重新输入!');</script>");
		response.setHeader("refresh","0;url=forgetPassword.jsp");
	}
	if(userFlag)
	{
		rs.next();
		if(phone.equals(rs.getString(3)))
		{
			if(password_true.equals(newpassword))
			{
				int i=db.executeUpdate(updatesql);
				if(i==1)
				{
					out.println("<script language='javaScript'> alert('修改成功,点击确定跳转到主页!');</script>");
					response.setHeader("refresh","0;url=Login.jsp");
				}
				else
				{
					out.println("<script language='javaScript'> alert('修改失败，点击确定返回添加页面！');</script>");
					response.setHeader("refresh","0;url=GetInfomation.jsp");
				}
			}
			else
			{
				out.println("<script language='javaScript'> alert('密码不一致，请重新填写。');</script>");
				response.setHeader("refresh", "1;url=forgetPassword.jsp");
			}
		}
		else
		{
			out.println("<script language='javaScript'> alert('电话号输入错误，请重新输入!');</script>");
			response.setHeader("refresh","0;url=forgetPassword.jsp");
		}
	}
	db.close();
}
%>
</jsp:useBean>
</body>
</html>