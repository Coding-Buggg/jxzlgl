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
<title>��ʦ����</title>

   <script type="text/javascript" src="script/CK.js"></script>

<link rel="stylesheet" type="text/css" href="styles/reset.css">
<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="addteacher.jsp" onsubmit="return ck()">
<strong>����½�ʦ:</strong><br>
  ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ţ�
    <input name="tid" type="text"  /><br>
    ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺
    <input name="password" type="text"  value="123" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
    <input name="tname" type="text"  /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
    <input id="sex" name="tsex" type="text"  /><br>
ְ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ƣ�
    <input name="post" type="text"  /><br>
����ѧԺ��
    <input name="dept" type="text"  /><br>
��ϵ��ʽ��
		<input name="tphone" type="text"  /><br>
		<input type="submit" name="Submit" value="�ύ" />
		<input type="reset" name="Submit2" value="����" />
</form>
<br>
       <table align="center" width="700px" border="1">
           <caption><strong>��ʦ��Ϣ</strong></caption>
           <tr>
               <th width="50px">����</th>
               <th width="100px">����</th>
               <th width="100px">����</th>
               <th width="50px">�Ա�</th>
               <th width="100px">ְ��</th>
               <th width="150px">����ѧԺ</th>
               <th width="100px">��ϵ��ʽ</th>
               <th width="100px">����</th>
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
                <td width="100px"><a href="XGteacher.jsp?id=<%=teacher.getTid() %>">�޸�</a>|<a href="Delteacher.jsp?id=<%=teacher.getTid() %>" onclick="return confirm('ȷ��Ҫɾ������Ϊ��<%=teacher.getTid() %>����ʦ��') " >ɾ��</a></td>
            </tr>
            <%
                }
                
             %>
       </table>
       <br>
       <a href="<%=request.getContextPath() %>/GLshouye.jsp">���ع���Ա��ҳ</a>
  </div>
  </body>
</html>
