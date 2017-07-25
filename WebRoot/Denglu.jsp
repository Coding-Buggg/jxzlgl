<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB18030" %>
<html>
  <head>

    <title>登录界面</title>
    
	<link rel="stylesheet" type="text/css" href="styles/DLstyle.css">
	<script type="text/javascript" src="script/jquery-3.1.0.js"></script>
	<script type="text/javascript" src="script/Juese.js"></script>
	<script type="text/javascript">
	    function checkForm(myForm){
	var msg="";
	var setFocused=false;
	if(myForm.userName.value==""){
		msg+="账号不能为空！\n";
		myForm.userName.focus();
		setFocused=true;
	}
	if(myForm.password.value==""){
		msg+="密码不能为空！\n";
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
<h2>用户登录</h2><br>
         <select id="juese" onchange="xuanze()">
             <option  value="xuesheng">学生</option>
             <option  value="jiaoshi">教师</option>
             <option  value="guanliyuan">管理员</option>
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
        <td>学号: <input type="text" name="userName" style="height:30px;"></td>
      </tr>
      <tr>
        <td>密码: <input type="password" name="password" style="height:30px;"></td>
      </tr>
      <tr>
        <td> <input type="submit" value="登录" style="margin-left:80px;margin-top:10px" >   <input type="reset" value="重置"></td>     
      </tr>
    </table>
    </form>
</div>
<div id="teacher" style="display: none;">
     <form name="denglu2" method="post" action="processLogin2.jsp" onsubmit="return checkForm(this);">
      <table>
      <tr>
        <td>工号: <input type="text" name="userName" style="height:30px;"></td>
      </tr>
      <tr>
        <td>密码: <input type="password" name="password" style="height:30px;"></td>
      </tr>
      <tr>
        <td> <input type="submit" value="登录" style="margin-left:80px;margin-top:10px" >   <input type="reset" value="重置"> </td>      
      </tr>
    </table>
    </form>
</div>
<div id="administrator" style="display: none;">
     <form name="denglu3" method="post" action="processLogin3.jsp" onsubmit="return checkForm(this);">
      <table>
      <tr>
        <td>帐号: <input type="text" name="userName" style="height:30px;"></td>
      </tr>
      <tr>
        <td>密码: <input type="password" name="password" style="height:30px;"></td>
      </tr>
      <tr>
        <td> <input type="submit" value="登录" style="margin-left:80px;margin-top:10px" >  <input type="reset" value="重置"></td>   
      </tr>
    </table>
    </form>
</div>
</div>
</body>
</html>
