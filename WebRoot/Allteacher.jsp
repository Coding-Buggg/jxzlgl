<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.jxzl.user.Teacher" %>
<%@ page import="com.jxzl.user.TeacherDAO" %>
<%
    TeacherDAO dao=new TeacherDAO();
    List<Teacher> teachers = dao.QueryAll();
 %>
    
<html>
<head>
<title>教师管理</title>

   <script type="text/javascript" src="script/CK.js"></script>

<link rel="stylesheet" type="text/css" href="styles/reset.css">
<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="addteacher.jsp" onsubmit="return ck()">
<strong>添加新教师:</strong><br>
  工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
    <input name="tid" type="text"  /><br>
    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
    <input name="password" type="text"  value="123" /><br>
姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
    <input name="tname" type="text"  /><br>
性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
    <input id="sex" name="tsex" type="text"  /><br>
职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：
    <input name="post" type="text"  /><br>
所属学院：
    <input name="dept" type="text"  /><br>
联系方式：
		<input name="tphone" type="text"  /><br>
		<input type="submit" name="Submit" value="提交" />
		<input type="reset" name="Submit2" value="重置" />
</form>
<br>
       <table align="center" width="700px" border="1">
           <caption><strong>教师信息</strong></caption>
           <tr>
               <th width="50px">工号</th>
               <th width="100px">密码</th>
               <th width="100px">姓名</th>
               <th width="50px">性别</th>
               <th width="100px">职称</th>
               <th width="150px">所属学院</th>
               <th width="100px">联系方式</th>
               <th width="100px">操作</th>
           </tr>
           <%
               for(int i=0;i<teachers.size();i++){
               Teacher teacher=teachers.get(i);
            %>
            <tr>
                <td width="50px"><%=teacher.getTid() %></td>
                 <td width="100px"><%=teacher.getPassword() %></td>
                <td width="100px"><%=teacher.getTname() %></td>
                <td width="50px"><%=teacher.getTsex() %></td>
                <td width="100px"><%=teacher.getPost() %></td>
                <td width="150px"><%=teacher.getDept() %></td>
                <td width="100px"><%=teacher.getTphone() %></td>
                <td width="100px"><a href="XGteacher.jsp?id=<%=teacher.getTid() %>">修改</a>|<a href="Delteacher.jsp?id=<%=teacher.getTid() %>" onclick="return confirm('确定要删除工号为：<%=teacher.getTid() %>的老师吗？') " >删除</a></td>
            </tr>
            <%
                }
                
             %>
       </table>
       <br>
       <a href="<%=request.getContextPath() %>/GLshouye.jsp">返回管理员首页</a>
  </div>
  </body>
</html>
