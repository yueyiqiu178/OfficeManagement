

function change(){

var random=Math.random();
document.getElementById("ipic").src="verifycode.jsp?r="+random;

}



function check(){
	
	
	var id=document.getElementById("uid").value;
	var pwd=document.getElementById("pwd").value;
	var verify=document.getElementById("verifycode").value;
	
	if(id==""){
		alert("�Τ�W���ର��");
		return false;
	}
	
	if(pwd==""){
		alert("�K�X���ର��");
		return false;
	}
	
	if(verify==""){
		alert("���ҽX���ର��");
		return false;
	}
	
	return true;
}