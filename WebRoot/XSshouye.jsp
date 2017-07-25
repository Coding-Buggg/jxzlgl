<%@page import="com.jxzl.user.Student"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>

<%
 
				Student student =  (Student)session.getAttribute("Student");
				String sname = "";
				if(student != null)
					sname = student.getSname();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>学生个人信息</title>
    
	<link rel="stylesheet" type="text/css" href="styles/gerenxx.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">
	<script type="text/javascript" src="script/tpjz.js"></script>

  </head>
 
  <body>
		<table align="center" width="100%"  id="headtb" style="background:#104E8B"> 
			<tr>
				<td colspan="2">
					<img id="head-img" src="./images/head.png">
				</td>
			</tr>
			
			<tr>
				<td style="color:#fff;padding-left:40px" >
					欢迎  <%=sname%>同学 [<a href="Gaimm1.jsp?sid=<%=student.getSid() %>">更改密码</a> | <a href="loginout1.jsp">退出系统</a>]
				</td>
				<td align="right" height="25"style="padding-right:40px">
					<a href="<%=request.getContextPath() %>/JScx.jsp">查询教师</a> |
					<a href="<%=request.getContextPath() %>/CZzl.jsp?shenfen=XS">资料查找</a> 
				</td>
			</tr>
		</table>
<div id="grxx" style="background:url(images/xxbg.jpg)  0 0/100% 100% no-repeat;overflow:hidden">
		学号：<%=student.getSid() %><br>
		姓名：<%=student.getSname() %><br>
		性别：<%=student.getSsex() %> <br>
		专业：<%=student.getMajor() %> <br>
		入学年份：<%=student.getSyear() %><br>
		联系方式：<%=student.getSphone() %><br>
  </div>
</body>
</html>
