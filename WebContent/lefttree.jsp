<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<link href="css/treestyle.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">

function changetree(id){

	for(var i=1;i<10;i++){

		if(id!="li"+i){

			}
		else{

			var opdiv=document.getElementById(id+"d")
			var displayvalue=opdiv.style.display;

			if(displayvalue=="none"){
				opdiv.style.display="block";
				}
			else{
				opdiv.style.display="none";
				}
			
			}
			
		}
	
}

</script>
</head>
<body>

<div id="lefttree">
<ul>
<li id="li1"><a href="#" onclick="changetree('li1')" class="a">���޲z</a></li>
<div id="li1d" style="display: none;">
<a href="receiveFile.action"><img alt="" src="images/left/001.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�������</a><br/>
<a href="sendFile.action"><img alt="" src="images/left/002.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�o�e���</a>
</div>
<li id="li2"><a href="#" onclick="changetree('li2')" class="a">���~�@��</a></li>
<div id="li2d" style="display: none;">
<a href="viewShare.action"><img alt="" src="images/left/003.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�d�ݦ@��</a><br/>
<a href="uploadShare.action"><img alt="" src="images/left/004.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�W�Ǧ@��</a><br/>
<s:if test="right==3">
<a href="manageShare.action"><img alt="" src="images/left/005.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�޲z�@��</a><br/>
</s:if>
</div>
<li id="li3"><a href="#" onclick="changetree('li3')" class="a">�����޲z</a></li>
<div id="li3d" style="display: none;">
<a href="receiveMessage.action"><img alt="" src="images/left/006.gif" onmousedown="" onmouseover="" onmouseout=""><br/>��������</a><br/>
<a href="sendMessage.action"><img alt="" src="images/left/007.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�o�e����</a><br/>
</div>
<li id="li4"><a href="#" onclick="changetree('li4')" class="a">�ӽ�ñ��</a></li>
<div id="li4d" style="display: none;">
<s:if test="right==3">
<a href="viewDoc.action"><img alt="" src="images/left/009.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ݧ�ӽ�</a><br/>
<a href="sendDoc.action"><img alt="" src="images/left/010.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�o�e�ӽ�</a><br/>
<a href="allDoc.action"><img alt="" src="images/left/011.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�Ҧ��ӽ�</a><br/>
<a href="myDoc.action"><img alt="" src="images/left/012.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ڪ��ӽ�</a><br/>
</s:if>
<s:else>
<s:if test="right==2">
<a href="viewDoc.action"><img alt="" src="images/left/009.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ݧ�ӽ�</a><br/>
<a href="sendDoc.action"><img alt="" src="images/left/010.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�o�e�ӽ�</a><br/>
<a href="myDoc.action"><img alt="" src="images/left/012.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ڪ��ӽ�</a><br/>
</s:if>
<s:else>
<a href="sendDoc.action"><img alt="" src="images/left/010.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�o�e�ӽ�</a><br/>
<a href="myDoc.action"><img alt="" src="images/left/012.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ڪ��ӽ�</a><br/>

</s:else>
</s:else>
</div>
<li id="li9"><a href="#" onclick="changetree('li9')" class="a">�ҶԺ޲z</a></li>
<div id="li9d" style="display: none;">
<s:if test="right==3">
<a href="attTime.action"><img alt="" src="images/left/008.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ҶԮɶ�</a><br/>
<a href="viewAtt.action"><img alt="" src="images/left/013.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ҶԬd��</a><br/>
</s:if>
<a href="attOnline.action"><img alt="" src="images/left/012.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�b�u�Ҷ�</a><br/>
</div>
<s:if test="right==3">
<li id="li5"><a href="#" onclick="changetree('li5')" class="a">�H�O�귽</a></li>
<div id="li5d" style="display: none;">
<a href="addUser.action"><img alt="" src="images/left/014.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�K�[���u</a><br/>
<a href="viewUser.action"><img alt="" src="images/left/015.gif" onmousedown="" onmouseover="" onmouseout=""><br/>���u�޲z</a><br/>
</div>
</s:if>
<li id="li6"><a href="#" onclick="changetree('li6')" class="a">�q�l�l��</a></li>
<div id="li6d" style="display: none;">
<a href="sendEmail.jsp"><img alt="" src="images/left/016.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�o�e�l��</a><br/>
</div>
<li id="li8"><a href="#" onclick="changetree('li8')" class="a">���ư�</a></li>
<div id="li8d" style="display: none;">
<a href="sendAlarm.action"><img alt="" src="images/left/010.gif" onmousedown="" onmouseover="" onmouseout=""><br/>����ĵ</a><br/>
<s:if test="right==3">
<a href="viewAlarm.action"><img alt="" src="images/left/011.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�d�ݳ�ĵ</a><br/>
</s:if>
</div>
<li id="li7"><a href="#" onclick="changetree('li7')" class="a">�t�κ޲z</a></li>
<div id="li7d" style="display: none;">
<a href="changePwd.jsp"><img alt="" src="images/left/017.gif" onmousedown="" onmouseover="" onmouseout=""><br/>�ק�K�X</a><br/>
</div>
</ul>
</div>
<div id="marq">
<marquee onmouseover="this.stop()" onmouseout="this.start()" >
<center>
<s:if test="right==3">
</s:if>
<s:else>
<s:if test="right==2">
</s:if>
<s:else></s:else>
</s:else>
</center>
</marquee>
</div>
</body>
</html>