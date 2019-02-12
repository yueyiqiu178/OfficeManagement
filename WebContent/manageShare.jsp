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
<link href="css/type.css" type="text/css" rel="stylesheet"/>
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
<ul>
<s:iterator value="shareTypeList">
<li>
<a href="viewShare.action?currentPage=1&shareType=<s:property value="typeNumber"/>"><s:property value="typeName"/></a>
</li>
</s:iterator>
</ul>

<table width="100%" align="center" cellpadding="0" cellspacing="0">
<tr style="background-color:#c1d9f3;height: 40px;">
<th style="border-bottom: 2px solid #154ba0;">���W</th>
<th style="border-bottom: 2px solid #154ba0;">�������</th>
<th style="border-bottom: 2px solid #154ba0;">���D�D</th>
<th style="border-bottom: 2px solid #154ba0;">�@�ɮɶ�</th>
<th style="border-bottom: 2px solid #154ba0;">�j�p</th>
<th style="border-bottom: 2px solid #154ba0;">�@�ɤH</th>
<th style="border-bottom: 2px solid #154ba0;">�R��</th>
</tr>
<s:iterator value="shareList" status="share">
<tr id="share<s:property value="#share.index"/>" style="height: 40px;" 
onmouseover="mouseovercolor('share<s:property value="#share.index"/>');" onmouseout="mouseoutcolor('share<s:property value="#share.index"/>');">
<td><s:property value="realName"/></td>
<td><s:property value="shareTypeName"/></td>
<td><s:property value="shareTitle"/></td>
<td><s:property value="time"/></td>
<td><s:property value="size"/>K</td>
<td><s:property value="fromUserRealname"/></td>
<td><a href="delShare.action?fileName=<s:property value="shareName"/>"><img alt="�I���R��" src="images/del.gif">&nbsp;�R��</a></td>
</tr>
</s:iterator>
<tr>
<td colspan="7">
<s:form action="viewShare" theme="simple" method="post">
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
<s:select name="pageSpan" list="#{2:'2��/��',5:'5��/��',10:'10��/��',15:'15��/��',20:'20��/��',25:'25��/��'}"></s:select>
<s:property value="currentPage"/>/<s:property value="maxPage"/>
<s:if test="currentPage>1">
<a href="viewShare.action?currentPage=<s:property value="currentPage-1"/>&pageSpan=<s:property value='pageSpan'/>" style="text-decoration: none;color:#0f4097;">�W�@��</a>
</s:if>
<s:if test="currentPage<maxPage">
<a href="viewShare.action?currentPage=<s:property value="currentPage+1"/>&pageSpan=<s:property value='pageSpan'/>" style="text-decoration: none;color:#0f4097;">�U�@��</a>
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