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
<table cellpadding="0" cellspacing="0" align="center" width="100%">
<tr style="background-color:#c1d9f3;height: 40px ">
<th style="border-bottom: 2px solid #154ba0;">����o�e��</th>
<th style="border-bottom: 2px solid #154ba0;">���ݳ���</th>
<th style="border-bottom: 2px solid #154ba0;">�D�D</th>
<th style="border-bottom: 2px solid #154ba0;">�o�e�ɶ�</th>
<th style="border-bottom: 2px solid #154ba0;">�i��</th>
<th style="border-bottom: 2px solid #154ba0;">ñ��</th>
</tr>
<s:iterator value="docList" status="doc">
<tr id="doc<s:property value="#doc.index"/>" style="height: 40px;" 
onmouseover="mouseovercolor('doc<s:property value="#doc.index"/>');" onmouseout="mouseoutcolor('doc<s:property value="#doc.index"/>');">
<td style="border-bottom:1px solid #a8cde4;"><s:property value="fromUserName"/></td>
<td style="border-bottom:1px solid #a8cde4;"><s:property value="deptName"/></td>
<td style="border-bottom:1px solid #a8cde4;"><s:property value="title"/></td>
<td style="border-bottom:1px solid #a8cde4;"><s:property value="docTime"/></td>
<td style="border-bottom:1px solid #a8cde4;">
<a href="docPro.action?docNum=<s:property value="docNumber"/>">�d��</a>
</td>
<td style="border-bottom:1px solid #a8cde4;">
<a href="readDoc.action?docNum=<s:property value="docNumber"/>">ñ��</a>
</td>
</tr>
</s:iterator>
<tr style="background-color:#c1d9f3;height: 23px ">
<td colspan="6">
<s:form action="viewDoc" theme="simple" method="post">
<table width="100%">
<tr>
<td align="right">
<s:select onchange="this.form.submit()" name="pageSpan" list="#{2:'2��/��',5:'5��/��',10:'10��/��',15:'15��/��',20:'20��/��',25:'25��/��'}"></s:select>
<s:property value="currentPage"/>/<s:property value="maxPage"/>
<s:if test="currentPage>1">
<a href="viewDoc.action?currentPage=<s:property value="currentPage-1"/>&pageSpan=<s:property value='pageSpan'/>">�W�@��</a>
</s:if>
<s:if test="currentPage<maxPage">
<a href="viewDoc.action?currentPage=<s:property value="currentPage+1"/>&pageSpan=<s:property value='pageSpan'/>">�U�@��</a>
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