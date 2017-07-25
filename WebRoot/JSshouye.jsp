<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.jxzl.user.Teacher"%>
<%@page import="com.jxzl.user.TeacherDAO"%>
<%
 
				Teacher teacher =  (Teacher)session.getAttribute("Teacher");
				String tname = "";
				if(teacher != null)
					tname = teacher.getTname();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>教师个人信息</title>
    

	<link rel="stylesheet" type="text/css" href="styles/gerenxx.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">
	<script type="text/javascript" src="script/tpjz.js"></script>
  </head>
 
  <body>
		<table align="center" width="100%"  id="headtb" style="background:#104E8B"> 
			<tr>
				<td colspan="4">
					<img id="head-img" src="./images/head.png">
				</td>
			</tr>
			
			<tr >
				<td style="color:#fff;padding-left:40px">
					欢迎  <%=tname%> 老师[<a href="Gaimm2.jsp?tid=<%=teacher.getTid() %>">更改密码</a> | <a href="loginout2.jsp">退出系统</a>]
				</td>
				<td align="right" height="25" style="padding-right:40px">
					<a href="<%=request.getContextPath() %>/SCzl.jsp?name=<%=teacher.getTname() %>">上传资料</a> |
					<a href="<%=request.getContextPath() %>/CZzl.jsp?shenfen=JS">资料查找</a> 
				</td>
			</tr>
		</table>
<div id="grxx" style="background:url(images/xxbg.jpg)  0 0/100% 100% no-repeat;overflow:hidden">
		工号：<%=teacher.getTid() %><br>
		姓名：<%=teacher.getTname() %><br>
		性别：<%=teacher.getTsex() %> <br>
		职称：<%=teacher.getPost() %> <br>
		所属学院：<%=teacher.getDept() %><br>
		联系方式：<%=teacher.getTphone() %><br>
  </div>
  </body>
</html>
