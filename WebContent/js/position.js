

function updateTree(id){
	document.getElementById(id).style.display="block";
}



function changePic(pic){
	
	var com=document.getElementById(pic);
	var height=175.0;
	var width=200.0;
	var pheight=com.height;
	var pwidth=com.width;
	
	if((pheight/height)>(pwidth/width)){
		
		if(pheight>height){
			
			com.height=pheight/(pheight/height);
			com.width=pwidth/(pheight/height);
		}

	}
	else{
		
	if(pwidth>width){
			
			com.height=pheight/(pwidth/width);
			com.width=pwidth/(pwidth/width);
		}
	
	}


}


function getElementPos(id){
	
	var ua=navigator.userAgent.toLowerCase();
	var el=document.getElementById(id);
	
	if(el.parentNode==null||el.style.display=="hidden"){
		return false;
	}
	
	var box;
	
	if(el.getBoundingClientRect){
		box=el.getBoundingClientRect();
		var scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop); 
        var scrollLeft = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft); 
        return {x:box.left+ scrollLeft, y:box.top + scrollTop,w:box.right-box.left,h:box.bottom-box.top};    
	}
	
	return false;
	
}



function realtime(){
	var com=document.getElementById("time");
	var top=document.getElementById("now");
	var date=new Date();
	var year=date.getYear()+1900;
	var month=date.getMonth()+1;
	var day=date.getDate();
	var hour=date.getHours();
	var min=date.getMinutes();
	var second=date.getSeconds();
	var d=date.getDay();
	var xq="";
	if(d==1){xq='�@'}
	else if(d==2){xq='�G'}
	else if(d==3){xq='�T'}
	else if(d==4){xq='�|'}
	else if(d==5){xq='��'}
	else if(d==6){xq='��'}
	else if(d==0){xq='��'}
	if(com!=null)
	{
		com.innerHTML=year+"�~"+month+"��"+day+"�� "+hour+":"+min+":"+second+" �P��"+xq;
	}
	if(top!=null)
	{
		top.innerHTML=year+"�~"+month+"��"+day+"�� "+hour+":"+min+":"+second+" �P��"+xq;
	}
	setTimeout('realtime()',1000);
}


function mouseovercolor(id){
	document.getElementById(id).className="mouseover";
}


function mouseoutcolor(id){
	document.getElementById(id).className="mouseout";
}



function test(pic){
	
	var com=document.getElementById(pic);
	com.width=400;
	com.height=400;
}


function showErrMsg(msg,id){
	
	alert("hello");
	
	
	var fromObj=getElementPos(id);
	var y=fromObj.y+fromObj.h-1;
	var x=fromObj.x+fromObj.w/2;
	
	var messagetable=document.getElementById("myerr");
	messagetable.style.left=y;
	messagetable.style.top=x;
		
	var messagearea=document.getElementById("myerrs");
	messagearea.innerHTML=msg;
	messagetable.style.visibility="visible";
	
	var up=document.getElementById("myup");
	up.style.left=x;
	up.style.top=y;
	up.style.visibility="visible";
	
	
	
}


