<%@page import="com.jxzl.user.AdministratorDAO"%>
<%@page import="com.jxzl.user.Administrator"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@page contentType="text/html;charset=gbk" %>
<html>
<head>
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
			<%
				Administrator adm =  (Administrator)session.getAttribute("Administrator");
				String aname = "";
				if(adm != null)
					aname = adm.getAname();
			%>
			<tr>
				<td style="color:#fff;padding-left:40px">
					��ӭ  <%=aname%>���� [ <a href="Gaimm3.jsp?aid=<%=adm.getAid() %>">��������</a> |<a href="loginout3.jsp">�˳�ϵͳ</a>]
				</td>
				<td align="right" height="25" style="padding-right:40px">
					<a href="<%=request.getContextPath() %>/Allstu.jsp">ѧ����Ϣ����</a> |
					<a href="<%=request.getContextPath() %>/Allteacher.jsp">��ʦ��Ϣ����</a> |
					<a href="<%=request.getContextPath() %>/CZzl.jsp?shenfen=GLY">���ϲ���</a> 
				</td>
			</tr>
		</table>
<div id="grxx" style="background:url(images/xxbg.jpg)  0 0/100% 100% no-repeat;overflow:hidden">
		�ʺţ�<%=adm.getAid() %><br>
		������<%=adm.getAname() %><br>
		�Ա�<%=adm.getAsex() %><br>
		��ϵ��ʽ��<%=adm.getAphone() %> <br>
</div>
</body>
</html>