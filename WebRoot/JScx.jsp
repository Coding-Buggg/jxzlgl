<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.jxzl.user.Teacher" %>
<%@ page import="com.jxzl.user.TeacherDAO" %>
<%
    TeacherDAO dao=new TeacherDAO();
    request.setCharacterEncoding("GBK");
     String tname=request.getParameter("tname");
     List<Teacher> teachers=dao.quickSearch(tname);
 %>
    
<html>
<head>
<title>教师管理</title>

   <script type="text/javascript" src="script/CK.js"></script>
<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
<link rel="stylesheet" type="text/css" href="styles/reset.css">
	
  </head>
  
  <body>
  <div id="xgmm4">
  <form id="form3" method="post" action="JScx.jsp" name="jscx">
        教师姓名:<input type="text" name="tname" value="<%if(request.getParameter("tname")==null)out.print("");else out.println(request.getParameter("tname")); %>" />
        <input type="submit" name="Submit" value="查找" />
  
    </form>
       <table align="center" width="700px" border="1">
           <caption><strong>教师信息</strong></caption>
           <tr>
               <th width="50px">工号</th>
               <th width="100px">姓名</th>
               <th width="50px">性别</th>
               <th width="100px">职称</th>
               <th width="150px">所属学院</th>
               <th width="100px">联系方式</th>
           </tr>
           <%
               for(int i=0;i<teachers.size();i++){
               Teacher teacher=teachers.get(i);
            %>
            <tr>
                <td width="50px"><%=teacher.getTid() %></td>
                <td width="100px"><%=teacher.getTname() %></td>
                <td width="50px"><%=teacher.getTsex() %></td>
                <td width="100px"><%=teacher.getPost() %></td>
                <td width="150px"><%=teacher.getDept() %></td>
                <td width="100px"><%=teacher.getTphone() %></td>
            </tr>
            <%
                }
                
             %>
       </table>
       <br>
       <a href="<%=request.getContextPath() %>/XSshouye.jsp">返回学生首页</a>
  </div>
  </body>
</html>
