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
<body onload="updateTree('li9d')">
<div id="container">
<div id="tophead">
<s:action name="top" executeResult="true"></s:action>
</div>
<div id="leftcontent">
<s:action name="leftTree" executeResult="true"></s:action>
</div>
<div id="maincontent">

<table cellpadding="0" cellspacing="0" width="100%">
<tr style="background-color:#c1d9f3;height: 40px ">
<th style="background-color:#c1d9f3;height: 40px ">���</th>
<th style="background-color:#c1d9f3;height: 40px ">�m�W</th>
<th style="background-color:#c1d9f3;height: 40px ">����</th>
<th style="background-color:#c1d9f3;height: 40px ">�ҶԪ��A</th>
<th style="background-color:#c1d9f3;height: 40px ">�Ҷ�IP</th>

</tr>

<s:iterator value="attList" status="att">
<tr id="att<s:property value="#att.index"/>" style="height: 40px;" 
onmouseover="mouseovercolor('att<s:property value="#att.index"/>');" onmouseout="mouseoutcolor('att<s:property value="#att.index"/>');">
<td style="border-bottom:1px solid #a8cde4;"><s:property value="time"/></td>
<td style="border-bottom:1px solid #a8cde4;"><s:property value="realName"/></td>
<td style="border-bottom:1px solid #a8cde4;"><s:property value="deptName"/></td>
<td style="border-bottom:1px solid #a8cde4;">
<s:if test="startState==2">
���`<span><s:property value="startTime"/></span>
</s:if>
<s:else>
���<span><s:property value="startTime"/></span>
</s:else>
&nbsp;&nbsp;|&nbsp;&nbsp;
<s:if test="endState==2">
���`<span><s:property value="endTime"/></span>
</s:if>
<s:else>
���h<span><s:property value="endTime"/></span>
</s:else>
</td>
<td style="border-bottom:1px solid #a8cde4;"><s:property value="startIp"/>/<s:property value="endIp"/></td>
</tr>
</s:iterator>
<tr style="background-color:#c1d9f3;height: 23px ">
<td colspan="7">
<s:form action="viewAtt" theme="simple" method="post">
<table width="100%">
<tr>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4"></td>
<td style="border-bottom:1px solid #a8cde4" align="right">
<s:select onchange="this.form.submit()"  name="pageSpan" list="#{2:'2��/��',5:'5��/��',10:'10��/��',15:'15��/��',20:'20��/��',25:'25��/��'}"></s:select>
<s:property value="currentPage"/>/<s:property value="maxPage"/>
<s:if test="currentPage>1">
<a href="viewAtt.action?currentPage=<s:property value="currentPage-1"/>&pageSpan=<s:property value='pageSpan'/>" style="text-decoration: none;color:#0f4097;">�W�@��</a>
</s:if>
<s:if test="currentPage<maxPage">
<a href="viewAtt.action?currentPage=<s:property value="currentPage+1"/>&pageSpan=<s:property value='pageSpan'/>" style="text-decoration: none;color:#0f4097;">�U�@��</a>
</s:if>
</td>
</tr>
</table>
</s:form>
</td>
</tr>
</table>
</div>
</div>
</body>
</html>