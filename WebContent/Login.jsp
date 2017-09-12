<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE3 {color: #528311; font-size: 12px; }
.STYLE4 {
	color: #42870a;
	font-size: 12px;
}

</style>
</head>
<body>

<script type="text/javascript">

function reloadImage(imgurl)
{
	var getimagecode=document.getElementById("codeimg");
	getimagecode.src=imgurl+"?id="+Math.random();
}

function validate()
{
 	if(document.form1.username.value=="请填写用户名"||document.form1.username.value==""){
    	window.alert("用户名不能为空！");
    	return false;
	}
 	if(document.form1.password.value==""){
  		window.alert("密码不能为空！");
  		return false;
  	}
  	return true;
}
</script>

<form name="form1"  method = "post" action="judge.jsp">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#e5f6cf">&nbsp;</td>
  </tr>
  <tr>
    <td height="608" background="images/login_03.gif"><table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="266" background="images/login_04.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="95"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="424" height="95" background="images/login_06.gif">&nbsp;</td>
            <td width="183" background="images/login_07.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="35%" height="30"><div align="center"><span class="STYLE3">用户</span></div></td>
                <td width="65%" height="30"><input type="text" name = "username" value = "请填写用户名"  style="height:18px; width:100px; border:solid 1px #cadcb2; font-size:12px; color:#999999;"  onfocus="this.value='';" onblur="if(this.value.length < 1) this.value='请填写用户名';"></td>
              </tr>
              <tr>
                <td height="30"><div align="center"><span class="STYLE3">密码</span></div></td>
                <td height="30"><input type="password" name = "password" style="height:18px; width:100px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></td>
              </tr>
              <tr>
					<td height="30"><div align="right"><input type = "submit" value = "登陆" style="height:18px; width:50px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;" onclick="return validate()"></div></td>
					<td height="30"><div align="center"><input type = "button" style="height:18px; width:50px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;" onclick = "window.location.href='GetInfomation.jsp'" value = "注册"></div></td>
			  </tr>
            </table>
            </td>
            <td width="255" background="images/login_08.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="images/login_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;</td>
            <td width="22%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="44%" height="20">&nbsp;</td>
                <td width="56%" class="STYLE4">信1405-2班</td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>