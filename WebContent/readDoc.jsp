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
</head>
<body>
<div id="container">
<div id="tophead">
<s:action name="top" executeResult="true"></s:action>
</div>
<div id="leftcontent">
<s:action name="leftTree" executeResult="true"></s:action>
</div>
<div id="maincontent">
<table style="width: 100%;" cellpadding="0" cellspacing="0">
<tr height="30px">
<td style="width: 60px;color: #154ba0;background-color: #a8cde4;font-size: 14px;">�D�D</td>
<td style="border-bottom: 1px solid #154ba0;font-size: 14px;"><s:property value="title"/></td>
</tr>
<tr height="300ps">
<td style="color: #154ba0;background-color: #a8cde4;font-size: 14px;">���e</td>
<td valign="top" style="border-bottom: 1px solid #154ba0;font-size: 14px; text-indent: 2em;"><s:property value="content"/></td>
</tr>
<tr height="30px">
<td colspan="2" align="center">
<s:if test="canRead==1">
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="opDoc.action?docNum=<s:property value="docNum"/>&type=1">�P�N</a>&nbsp;&nbsp;&nbsp;
<a href="opDoc.action?docNum=<s:property value="docNum"/>&type=2">�ڵ�</a>
&nbsp;&nbsp;&nbsp;&nbsp;
</s:if>
<s:else>
<span style="color:red;">�ѩ�@��ñ�֩|���q�L,�L�k�i��G��ñ��</span>
</s:else>
</td>
</tr>
</table>
</div>
</div>
</body>
</html>