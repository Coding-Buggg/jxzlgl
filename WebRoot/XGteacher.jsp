<%@page import="com.jxzl.user.TeacherDAO"%>
<%@page import="com.jxzl.user.Teacher"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
    TeacherDAO dao=new TeacherDAO();
    int tid=Integer.parseInt(request.getParameter("id"));
    Teacher teacher=dao.get(tid);

 %>
    
<html>
<head>
<title>�޸Ľ�ʦ��Ϣ</title>

	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">

   <script type="text/javascript" src="script/CK.js"></script>
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="updateTea.jsp" onsubmit="return ck()">
<strong>�޸Ĺ���<%=tid %>��ʦ��Ϣ:</strong><br><br>
   ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺
    <input name="password" type="text"  value="<%=teacher.getPassword() %>" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
    <input name="tname" type="text"  value="<%=teacher.getTname() %>" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
    <input id="sex" name="tsex" type="text"  value=<%=teacher.getTsex() %> /><br>
ְ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ƣ�
    <input name="post" type="text"  value=<%=teacher.getPost() %> /><br>
����ѧԺ��
    <input name="dept" type="text" value="<%=teacher.getDept() %>" /><br>
��ϵ��ʽ��
    <input name="tphone" type="text" value="<%=teacher.getTphone() %> "/><br>
    <br>
    <input name="tid" type="hidden" value="<%=teacher.getTid() %>"  />
   <input type="submit" name="submit" value="�ύ" />
		</form>
		<br>
		<a href="<%=request.getContextPath() %>/Allteacher.jsp">���ؽ�ʦ����ҳ��</a>
	</div>
</body>
</html>
