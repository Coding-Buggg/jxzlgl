 <%@ page contentType="text/html;charset=GBK" language="java" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�ϴ�����</title>
    

<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
<link rel="stylesheet" type="text/css" href="styles/reset.css">
<script type="text/javascript" src="script/jquery-3.1.0.js"></script>
<script type="text/javascript" src="script/CK.js"></script>
<style>
	#submit1{
		display:none;
	}
</style>
</head>

  <body>
   <div id="xgmm">
<form id="form2" action="uploadServlet.do"  method="post" enctype="multipart/form-data">
<strong>�ϴ�����:</strong>
<br>
ѡ���ļ���<input id="myfile" type="file" name="myfile">
<br>
�������ͣ�
    <input id="zltype" name="type" type="text"  />
    <br>
    ���ϼ�飺
    <input id="profile" name="profile" type="text"  value="��" />
    
<input id="mname" name="mname" type="hidden"  value="��������" />
<input id="msize" name="msize" type="hidden" value="�ļ���С" />
<input name="tname" type="hidden" value="<% if(request.getParameter("name")==null) out.print(""); else out.print(request.getParameter("name")); %>${tname}" />
<input id="scDate"  name="scDate" type="hidden" value="�ϴ�����"  />
    <br>
    <br>
 <input id="bt1" type="button" value="�������"  onClick="getfile();">
 <input id="submit1" type="submit" value="�ϴ�" >
 <br>
 ${result}
</form>
<div id="abq1">
<a href="<%=request.getContextPath() %>/JSshouye.jsp">���ؽ�ʦ��ҳ</a>
</div>
</div>
<script type="text/javascript">
			function getfile(){
			$("#submit1").show();
			 var myFile = document.getElementById("myfile").value;
  			 var length = myFile.length;
   			 var x = myFile.lastIndexOf("\\");
   			 x++;
   			 var fileName = myFile.substring(x,length);
   			 document.getElementById("mname").value = fileName;
        
   			 var d = new Date();
    		var str = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
    		document.getElementById("scDate").value=str;
    		
    		var fup = document.getElementById("myfile");
			var msize = fup.files[0].size;
			var filesize=0;
			if(msize<1024){
					filesize=msize+"B";
			}
			else if(msize>=1024){
				filesize=(msize/1024).toFixed(2)+"KB";
			} 
			else if(msize>=1024*1024){
				filesize=(msize/(1024*1024)).toFixed(2)+"MB";
			}else{
				filesize=(msize/(1024*1024*1024)).toFixed(2)+"GB";
			}
			document.getElementById("msize").value=filesize;
			
			var zltype=document.getElementById("zltype").value;
			var profile=document.getElementById("profile").value;
			if(zltype==""){
					alert("����д�������ͣ��������ݿ�/C���Եȣ�");
					return false;
			}else{
			alert("��������:"+fileName+"\n" +"��������:"+zltype+"\n" +"�����ļ���С:"+filesize+"\n" +"���ϼ��:"+profile);
 						}
}
</script>
 </body>
</html>
