<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.jxzl.user.Student" %>
<%@ page import="com.jxzl.user.StudentDAO" %>
<%
    StudentDAO dao=new StudentDAO();
    List<Student> stus = dao.QueryAll();
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
<form id="form4" name="form1" method="post" action="addstu_insert.jsp" onsubmit="return ck()">
<strong>添加新学生:</strong><br>
  学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：
    <input name="sid" type="text" id="sid" /><br>
    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
    <input name="password" type="text" id="password" value="123" /><br>
姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
    <input name="sname" type="text" id="sname" /><br>
性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
    <input name="ssex" type="text" id="sex" /><br>
专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：
    <input name="major" type="text" id="major" /><br>
入学年份：
    <input name="syear" type="text" id="syear" /><br>
联系方式：
    <input name="sphone" type="text" id="sphone" />
  <input type="submit" name="Submit" value="提交" />
    <input type="reset" name="Submit2" value="重置" />
</form>
<br>
       <table align="center" width="700px" border="1">
           <caption><strong>学生信息</strong></caption>
           <tr>
               <th width="100px">学号</th>
               <th width="100px">密码</th>
               <th width="100px">姓名</th>
               <th width="100px">性别</th>
               <th width="100px">专业</th>
               <th width="100px">入学年份</th>
               <th width="100px">联系方式</th>
               <th width="100px">操作</th>
           </tr>
           <%
               for(int i=0;i<stus.size();i++){
               Student stu=stus.get(i);
            %>
            <tr>
                <td width="100px"><%=stu.getSid() %></td>
                 <td width="100px"><%=stu.getPassword() %></td>
                <td width="100px"><%=stu.getSname() %></td>
                <td width="100px"><%=stu.getSsex() %></td>
                <td width="100px"><%=stu.getMajor() %></td>
                <td width="100px"><%=stu.getSyear() %></td>
                <td width="100px"><%=stu.getSphone() %></td>
                <td width="100px"><a href="XiuGaistu.jsp?id=<%=stu.getSid() %>">修改</a>|<a href="Delstu.jsp?id=<%=stu.getSid() %>" onclick="return confirm('确定要删除学号为：<%=stu.getSid() %>的学生吗？');">删除</a></td>
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
