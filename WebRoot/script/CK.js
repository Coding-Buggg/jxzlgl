function ck(){
        for(var i=0;i<document.form1.elements.length-1;i++)
        {
         if(document.form1.elements[i].value=="")
         {
           alert("��ǰ�������п���");
           document.form1.elements[i].focus();
           return false;
         }
        }

//        var sex=document.getElementById("sex").value;
//        var m="��";
//        var w="Ů";
//        if(sex !=m || sex !=w){
//        	alert("�Ա��������л�Ů");
//        	return false;
//        	}
//        
        return true;
}