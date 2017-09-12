<%@ page  import = "java.sql.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示</title>
</head>
<style type = "text/css">
table
{
	border-collapse: collapse;
	border: none;
	margin: 0px auto;
	width: 400px;
}
th,td
{
	border: solid #333 1px;
	height: 25px;
}
div
{
	text-align: center;
}
</style>
<body>
<table>
<tr>
<th>学号</th>
<th>姓名</th>
<th>性别</th>
<th>年龄</th>
<th>手机号</th>
</tr>

<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
<%
request.setCharacterEncoding("UTF-8");
String sno = request.getParameter("sno");
String sql="select * from Student where sno = '" + sno + "'";
ResultSet rs = db.executeQuery(sql);

if(rs.next())
{
	
	out.println("<tr><td>" + rs.getString(1)+ 
			"</td><td>" + rs.getString(2) +
			"</td><td>" + rs.getString(3) +
			"</td><td>" + rs.getString(4) +
			"</td><td>" + rs.getString(5) +
			"</td><td><a href = 'xiugai.jsp?sno="+rs.getString(1)
			+"'>修改</a>&nbsp;</td><td><a href = 'shanchu.jsp?sno="+rs.getString(1)
					+"'>删除</a>&nbsp;</td></tr>");
}
else
{
	out.println("<script language='javaScript'> alert('用户不存在');</script>");
	response.setHeader("refresh", "1;url=sousuo.jsp");
}
db.close();
%>
</jsp:useBean>
</table>
</body>
</html>