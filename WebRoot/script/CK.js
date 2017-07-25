function ck(){
        for(var i=0;i<document.form1.elements.length-1;i++)
        {
         if(document.form1.elements[i].value=="")
         {
           alert("当前表单不能有空项");
           document.form1.elements[i].focus();
           return false;
         }
        }

//        var sex=document.getElementById("sex").value;
//        var m="男";
//        var w="女";
//        if(sex !=m || sex !=w){
//        	alert("性别请输入男或女");
//        	return false;
//        	}
//        
        return true;
}