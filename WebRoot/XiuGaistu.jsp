<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.jxzl.user.Student" %>
<%@ page import="com.jxzl.user.StudentDAO" %>
<%
    StudentDAO dao=new StudentDAO();
    int sid=Integer.parseInt(request.getParameter("id"));
    Student student=dao.get(sid);

 %>
    
<html>
<head>
<title>ѧ����Ϣ</title>

	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">
   <script type="text/javascript" src="script/CK.js"></script>
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="updateStu.jsp" onsubmit="return ck()">
<strong>�޸�ѧ��<%=sid %>ѧ����Ϣ:</strong><br><br>
    ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺
    <input name="password" type="text"  value="<%=student.getPassword() %>" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
    <input name="sname" type="text"  value="<%=student.getSname() %>" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
    <input name="ssex" type="text" id="sex" value=<%=student.getSsex() %> /><br>
ר&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ҵ��
    <input name="major" type="text"  value=<%=student.getMajor() %> /><br>
��ѧ��ݣ�
    <input name="syear" type="text" value="<%=student.getSyear() %>" /><br>
��ϵ��ʽ��
    <input name="sphone" type="text" value="<%=student.getSphone() %> "/><br>
    <br>
    <input name="sid" type="hidden" value="<%=student.getSid() %>"  />
   <input type="submit" name="submit" value="�ύ" />
</form>
<br>
<a href="<%=request.getContextPath() %>/Allstu.jsp">����ѧ������ҳ��</a>
</div>
  </body>
</html>
