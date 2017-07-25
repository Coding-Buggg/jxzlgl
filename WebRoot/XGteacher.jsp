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
<title>修改教师信息</title>

	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">

   <script type="text/javascript" src="script/CK.js"></script>
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="updateTea.jsp" onsubmit="return ck()">
<strong>修改工号<%=tid %>教师信息:</strong><br><br>
   密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
    <input name="password" type="text"  value="<%=teacher.getPassword() %>" /><br>
姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
    <input name="tname" type="text"  value="<%=teacher.getTname() %>" /><br>
性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
    <input id="sex" name="tsex" type="text"  value=<%=teacher.getTsex() %> /><br>
职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：
    <input name="post" type="text"  value=<%=teacher.getPost() %> /><br>
所属学院：
    <input name="dept" type="text" value="<%=teacher.getDept() %>" /><br>
联系方式：
    <input name="tphone" type="text" value="<%=teacher.getTphone() %> "/><br>
    <br>
    <input name="tid" type="hidden" value="<%=teacher.getTid() %>"  />
   <input type="submit" name="submit" value="提交" />
		</form>
		<br>
		<a href="<%=request.getContextPath() %>/Allteacher.jsp">返回教师管理页面</a>
	</div>
</body>
</html>
