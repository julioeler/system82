   window.onload=function() {
   hide();
   var group=document.getElementsByName('090');
     for(var i=0; i<group.length; i++) {
     group[i].onclick=function() {toggle(this.value);};
    }
};

function hide() {
 document.getElementById('r').style.display='none';
 }

function toggle(objID) {
 hide();
 if(objID!='ocultar') {
    document.getElementById(objID).style.display='';
    }
 }