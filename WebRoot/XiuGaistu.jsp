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
<title>学生信息</title>

	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">
   <script type="text/javascript" src="script/CK.js"></script>
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="updateStu.jsp" onsubmit="return ck()">
<strong>修改学号<%=sid %>学生信息:</strong><br><br>
    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
    <input name="password" type="text"  value="<%=student.getPassword() %>" /><br>
姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
    <input name="sname" type="text"  value="<%=student.getSname() %>" /><br>
性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
    <input name="ssex" type="text" id="sex" value=<%=student.getSsex() %> /><br>
专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：
    <input name="major" type="text"  value=<%=student.getMajor() %> /><br>
入学年份：
    <input name="syear" type="text" value="<%=student.getSyear() %>" /><br>
联系方式：
    <input name="sphone" type="text" value="<%=student.getSphone() %> "/><br>
    <br>
    <input name="sid" type="hidden" value="<%=student.getSid() %>"  />
   <input type="submit" name="submit" value="提交" />
</form>
<br>
<a href="<%=request.getContextPath() %>/Allstu.jsp">返回学生管理页面</a>
</div>
  </body>
</html>
