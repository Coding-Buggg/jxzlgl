<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
    
<html>
<head>
<title>修改密码</title>

   <script type="text/javascript" src="script/GMM.js"></script>
   <script type="text/javascript" src="script/CK.js"></script>
   <link rel="stylesheet" type="text/css" href="styles/xgmm.css">
   <link rel="stylesheet" type="text/css" href="styles/reset.css">
  </head>
  <body>
  <div id="xgmm">
<form id="form1" name="form1" method="post" action="updatemm1.jsp" onsubmit="return ck()">
修改密码:
<input id="pwd1" name="password" type="password"  /><br>
确认密码:
<input id="pwd2" name="password1" type="password" onkeyup="validate()"/><br>
<span id="tishi"></span>
    <input name="sid" type="hidden" value="<%=request.getParameter("sid") %>"  />
    <br>
    <br>
   <input id="submit" type="submit" name="submit" value="确认修改" />
</form>
<div id="abq1">
<a href="<%=request.getContextPath() %>/XSshouye.jsp">返回学生首页</a>
</div>
</div>
  </body>
</html>