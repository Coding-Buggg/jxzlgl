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
<title>ѧ����Ϣ</title>

	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">

   <script type="text/javascript" src="script/CK.js"></script>
  </head>
  
  <body>
  <div id="xgmm4">
<form id="form4" name="form1" method="post" action="addstu_insert.jsp" onsubmit="return ck()">
<strong>�����ѧ��:</strong><br>
  ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ţ�
    <input name="sid" type="text" id="sid" /><br>
    ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�룺
    <input name="password" type="text" id="password" value="123" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����
    <input name="sname" type="text" id="sname" /><br>
��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��
    <input name="ssex" type="text" id="sex" /><br>
ר&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ҵ��
    <input name="major" type="text" id="major" /><br>
��ѧ��ݣ�
    <input name="syear" type="text" id="syear" /><br>
��ϵ��ʽ��
    <input name="sphone" type="text" id="sphone" />
  <input type="submit" name="Submit" value="�ύ" />
    <input type="reset" name="Submit2" value="����" />
</form>
<br>
       <table align="center" width="700px" border="1">
           <caption><strong>ѧ����Ϣ</strong></caption>
           <tr>
               <th width="100px">ѧ��</th>
               <th width="100px">����</th>
               <th width="100px">����</th>
               <th width="100px">�Ա�</th>
               <th width="100px">רҵ</th>
               <th width="100px">��ѧ���</th>
               <th width="100px">��ϵ��ʽ</th>
               <th width="100px">����</th>
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
                <td width="100px"><a href="XiuGaistu.jsp?id=<%=stu.getSid() %>">�޸�</a>|<a href="Delstu.jsp?id=<%=stu.getSid() %>" onclick="return confirm('ȷ��Ҫɾ��ѧ��Ϊ��<%=stu.getSid() %>��ѧ����');">ɾ��</a></td>
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
