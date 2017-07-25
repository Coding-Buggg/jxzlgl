 <%@ page contentType="text/html;charset=GBK" language="java" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>上传资料</title>
    

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
<strong>上传资料:</strong>
<br>
选择文件：<input id="myfile" type="file" name="myfile">
<br>
资料类型：
    <input id="zltype" name="type" type="text"  />
    <br>
    资料简介：
    <input id="profile" name="profile" type="text"  value="无" />
    
<input id="mname" name="mname" type="hidden"  value="资料名称" />
<input id="msize" name="msize" type="hidden" value="文件大小" />
<input name="tname" type="hidden" value="<% if(request.getParameter("name")==null) out.print(""); else out.print(request.getParameter("name")); %>${tname}" />
<input id="scDate"  name="scDate" type="hidden" value="上传日期"  />
    <br>
    <br>
 <input id="bt1" type="button" value="检查资料"  onClick="getfile();">
 <input id="submit1" type="submit" value="上传" >
 <br>
 ${result}
</form>
<div id="abq1">
<a href="<%=request.getContextPath() %>/JSshouye.jsp">返回教师首页</a>
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
					alert("请填写资料类型！（如数据库/C语言等）");
					return false;
			}else{
			alert("资料名称:"+fileName+"\n" +"资料类型:"+zltype+"\n" +"资料文件大小:"+filesize+"\n" +"资料简介:"+profile);
 						}
}
</script>
 </body>
</html>
