<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB18030" %>
<html>
  <head>

    <title>��¼����</title>
    
	<link rel="stylesheet" type="text/css" href="styles/DLstyle.css">
	<script type="text/javascript" src="script/jquery-3.1.0.js"></script>
	<script type="text/javascript" src="script/Juese.js"></script>
	<script type="text/javascript">
	    function checkForm(myForm){
	var msg="";
	var setFocused=false;
	if(myForm.userName.value==""){
		msg+="�˺Ų���Ϊ�գ�\n";
		myForm.userName.focus();
		setFocused=true;
	}
	if(myForm.password.value==""){
		msg+="���벻��Ϊ�գ�\n";
		if(!setFocused){
		myForm.userName.focus();
		setFocused=true;
		}
	}
if(msg !=""){
	alert(msg);
	return false;
}
return true;
	
}
	</script>
</head>
<body style="background-image:url(images/bg-1.jpg);background-position:center; background-repeat:repeat-y">
<% 
   	Object obj= request.getAttribute("errorMessage");
 %>
<div id="main">
<h2>�û���¼</h2><br>
         <select id="juese" onchange="xuanze()">
             <option  value="xuesheng">ѧ��</option>
             <option  value="jiaoshi">��ʦ</option>
             <option  value="guanliyuan">����Ա</option>
         </select>
         <br />
         <br />
          <%          if(obj !=null){           %>
          <span style="color:red;font-weight:bold"><%=obj %></span>
          <%} %>
<div id="student"> 
     <form name="denglu1" method="post" action="processLogin1.jsp" onsubmit="return checkForm(this);" >
      <table>
      <tr>
        <td>ѧ��: <input type="text" name="userName" style="height:30px;"></td>
      </tr>
      <tr>
        <td>����: <input type="password" name="password" style="height:30px;"></td>
      </tr>
      <tr>
        <td> <input type="submit" value="��¼" style="margin-left:80px;margin-top:10px" >   <input type="reset" value="����"></td>     
      </tr>
    </table>
    </form>
</div>
<div id="teacher" style="display: none;">
     <form name="denglu2" method="post" action="processLogin2.jsp" onsubmit="return checkForm(this);">
      <table>
      <tr>
        <td>����: <input type="text" name="userName" style="height:30px;"></td>
      </tr>
      <tr>
        <td>����: <input type="password" name="password" style="height:30px;"></td>
      </tr>
      <tr>
        <td> <input type="submit" value="��¼" style="margin-left:80px;margin-top:10px" >   <input type="reset" value="����"> </td>      
      </tr>
    </table>
    </form>
</div>
<div id="administrator" style="display: none;">
     <form name="denglu3" method="post" action="processLogin3.jsp" onsubmit="return checkForm(this);">
      <table>
      <tr>
        <td>�ʺ�: <input type="text" name="userName" style="height:30px;"></td>
      </tr>
      <tr>
        <td>����: <input type="password" name="password" style="height:30px;"></td>
      </tr>
      <tr>
        <td> <input type="submit" value="��¼" style="margin-left:80px;margin-top:10px" >  <input type="reset" value="����"></td>   
      </tr>
    </table>
    </form>
</div>
</div>
</body>
</html>
