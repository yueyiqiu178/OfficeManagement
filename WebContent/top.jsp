<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<script type="text/javascript" src="js/position.js"></script>
<style type="text/css">
@import "dojo-release-1.9.2/dojo/resources/dojo.css";
@import "dojo-release-1.9.2/dijit/themes/tundra/tundra.css";
@import "dojo-release-1.9.2/dojox/widget/FisheyeList/FisheyeList.css";
</style>
<script type="text/javascript" src="dojo-release-1.9.2/dojo/dojo.js" djConfig="isDebug:false, parseOnLoad: true">
</script>
<script type="text/javascript">

dojo.require("dojox.widget.FisheyeList");
dojo.require("dojo.parser");

</script>
</head>
<body>
<table cellpadding="0" cellspacing="0" width="100%" bgcolor="#a8cde4">
<tr>
<td>
<a href="mainManage.action"><img alt="" src="images/icon.png"/></a>
</td>
<td>
<div>
<div>
<div dojoType="dojox.widget.FisheyeList"
itemWidth="70" itemHeight="50" itemMaxWidth="85" itemMaxHeight="80"
orientation="horizontal" effectUnits="2" itemPadding="20" attachEdge="top" labelEdge="center" id="myfisheye"
>
<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='mainManage.action'"
label="�t�ΥD��" iconSrc="images/top/001.png"
>
</div>
<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='sendFile.action'"
label="�o�e���" iconSrc="images/top/002.png"
>
</div>
<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='viewShare.action'"
label="�d�ݦ@��" iconSrc="images/top/003.png"
>
</div>
<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='sendMessage.action'"
label="�o�e����" iconSrc="images/top/004.png"
>
</div>

<s:if test="right!=1">
<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='viewDoc.action'"
label="�ݧ�ӽ�" iconSrc="images/top/005.png"
>
</div>
</s:if>

<s:if test="right==3">
<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='addUser.action'"
label="�K�[���u" iconSrc="images/top/006.png"
>
</div>
</s:if>

<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='sendEmail.jsp'"
label="�q�l�l��" iconSrc="images/top/007.png"
>
</div>

<div dojoType="dojox.widget.FisheyeListItem"
onClick="document.location.href='exitSys.action'"
label="�h�X�t��" iconSrc="images/top/008.png"
>
</div>

</div>
</div>
</div>
</td>
</tr>
<tr>
<td colspan="2">
<marquee onmouseover="this.stop()" onmouseout="this.start()" truespeed="truespeed" scrollamount="1" scrolldelay="30" direction="left" width="100%" height="20px">�z�n,�{�b���ɶ��O:<span id="now"></span></marquee>
</td>
</tr>
</table>

<div style="padding-top:5px; font-size:14px; font-weight: 700;color: red; background-color: #a8cde4; border-top: 2px solid black;">
�w��z:<s:property value="user.userRealname"/>&nbsp;&nbsp;&nbsp;&nbsp;
����:<s:property value="user.userDeptname"/>&nbsp;&nbsp;&nbsp;&nbsp;
�s��:<s:property value="user.userGroupname"/>&nbsp;&nbsp;&nbsp;&nbsp;
����:<s:property value="user.userRolename"/>&nbsp;&nbsp;&nbsp;&nbsp;
�v��:
<s:if test="right==3">
�W���v��
</s:if>
<s:elseif test="right==2">
�޲z��
</s:elseif>
<s:else>
�@����u
</s:else>

</div>
<script type="text/javascript" defer="defer">
realtime();
</script>
</body>
</html>