
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>

<html>
<head>
<title>�޸�����</title>

   <script type="text/javascript" src="script/GMM.js"></script>
   <script type="text/javascript" src="script/CK.js"></script>
   <link rel="stylesheet" type="text/css" href="styles/xgmm.css">
   <link rel="stylesheet" type="text/css" href="styles/reset.css">
  </head>
  
  <body>
  <div id="xgmm">
<form id="form1" name="form1" method="post" action="updatemm2.jsp" onsubmit="return ck()">
�޸�����:
<input id="pwd1" name="password" type="password"  /><br>
ȷ������:
<input id="pwd2" name="password1" type="password" onkeyup="validate()"/><br>
 <span id="tishi"></span>
    <input name="tid" type="hidden" value="<%=request.getParameter("tid") %>"  />
    <br>
    <br>
   <input id="submit" type="submit" name="submit" value="ȷ���޸�" />
</form>
<div id="abq1">
<a href="<%=request.getContextPath() %>/JSshouye.jsp">���ؽ�ʦ��ҳ</a>
</div>
</div>
  </body>
</html>
