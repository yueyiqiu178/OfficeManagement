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
<body onload="updateTree('li4d')">
<div id="container">
<div id="tophead">
<s:action name="top" executeResult="true"></s:action>
</div>
<div id="leftcontent">
<s:action name="leftTree" executeResult="true"></s:action>
</div>
<div id="maincontent">
<table cellpadding="0" cellspacing="0" border="1" style="border-color: #154ba0; margin: 0 auto; " align="center">
<tr height="30px">
<td width="150px" align="center">�D�D</td>
<td width="200px" align="center">�@��ñ�֪��A</td>
<s:if test="type==2">
<td width="200px" align="center">�G��ñ�֪��A</td>
</s:if>
<td width="150px" align="center">���媬�A</td>
</tr>
<tr>
<td align="center"><s:property value="topic"/></td>
<td align="center">
<table>
<s:iterator value="firstList" status="docdept">
<tr>
<td>
<s:property value="deptName"/>
</td>
<td>
<s:if test="deptState==0">
<img alt="" src="images/weishenpi.gif"><span style="color:#ffb637;">��ñ��</span>
</s:if>
<s:else>
<s:if test="deptState==1">
<img alt="" src="images/shenpichenggong.gif"><span>ñ�ֳq�L</span>
</s:if>
<s:else>
<img alt="" src="images/shenpishibai.gif"><span>ñ�֥���</span>
</s:else>
</s:else>
</td>
</tr>
</s:iterator>
</table>
</td>
<s:if test="type==2">
<td align="center">
<table>
<s:iterator value="secondList" status="docdept">
<tr>
<td>
<s:property value="deptName"/>
</td>
<td>
<s:if test="deptState==0">
<img alt="" src="images/weishenpi.gif"><span style="color:#ffb637;">��ñ��</span>
</s:if>
<s:else>
<s:if test="deptState==1">
<img alt="" src="images/shenpichenggong.gif"><span>ñ�ֳq�L</span>
</s:if>
<s:else>
<img alt="" src="images/shenpishibai.gif"><span>ñ�֥���</span>
</s:else>
</s:else>
</td>
</tr>
</s:iterator>
</table>
</td>
</s:if>
<td align="center">
<s:if test="state==0">
���bñ�֤�
</s:if>
<s:else>
<s:if test="state==1">
ñ�֦��\
</s:if>
<s:else>
ñ�֥���
</s:else>
</s:else>
</td>
</tr>
</table>
</div>
</div>
</body>
</html>