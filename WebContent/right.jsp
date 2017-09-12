<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎界面</title>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-image: url(images/background.jpg);
	margin: 0px;
}
</style>
</head>
<body>
<jsp:useBean id = "db" class = "bean.JBean" scope = "page" >
<%
String user = session.getAttribute("user").toString();
%>
<table width="100%" height = "100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif">
    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">欢迎界面</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
 <tr>
    <td height = "100%" valign="middle" >&nbsp;</td>
    <td  valign="top">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><span class="left_bt"><h3>感谢<%=user %>使用学生管理系统程序</h3></span><br>
      </tr>
    </table>
    </td>
  </tr>
</table>
</jsp:useBean>
</body>
</html>