<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<link href="css/mainstyle.css" type="text/css" rel="stylesheet"/>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/position.js"></script>
<script type="text/javascript">

function changepwd(){

	var oldpwd=document.getElementById("oldpwd").value.trim();
	if(oldpwd==""){
		alert("�±K�X���ର��!!");
		return false;
		}

	var newpwd=document.getElementById("newpwd").value.trim();
	var newpwdre=document.getElementById("newpwdre").value.trim();
	if(newpwd==""){
		alert("�s�K�X���ର��!!");
		return false;
		}

	var pwdpat=/^[0-9a-zA-Z_]{1,10}$/;
	if(!pwdpat.exec(newpwd)){
		alert("�K�X10��H��,�i�]�t�U�u");
		return false;
		}
	
	if(newpwd!=newpwdre){
		alert("�⦸�J���s�K�X���ǰt!!");
		return false;
		}


	return true;
}

</script>
</head>
<body onload="updateTree('li7d')">
<div id="container">
<div id="tophead">
<s:action name="top" executeResult="true"></s:action>
</div>
<div id="leftcontent">
<s:action name="leftTree" executeResult="true"></s:action>
</div>
<div id="maincontent">
<s:form action="changePwd" method="post" theme="simple" onsubmit="return changepwd();">
<table cellpadding="0" cellspacing="0" style="width: 550px;margin: 0 auto; border-bottom:#a8cde4 solid 2px;border-left:#a8cde4 solid 2px;border-right:#a8cde4 solid 2px; ">
<caption style="background-color: #a8cde4;text-align: center;font-size: 21px">�ק�K�X</caption>
<tr height="30px">
<td align="right">�±K�X</td>
<td><s:password id="oldpwd" name="oldpwd"></s:password></td>
<td>�п�J�±K�X,�H�T�{����</td>
</tr>
<tr height="30px">
<td align="right">�s�K�X</td>
<td><s:password id="newpwd" name="newpwd"></s:password></td>
<td>�Ѧr���P�Ʀr�զ�</td>
</tr>
<tr height="30px">
<td align="right">�T�{�s�K�X</td>
<td><s:password id="newpwdre" name="newpwdre"></s:password></td>
<td>�P�W���@��</td>
</tr>
<tr>
<td colspan="3" align="center">
<s:submit value="�T�{"></s:submit>&nbsp;&nbsp;&nbsp;<s:reset value="����"></s:reset>

</td>
</tr>
</table>
</s:form>
</div>
<script type="text/javascript">

var result="<s:property value='result'/>";

if(result!=""){
	alert(result);
}

</script>
</div>
</body>
</html>