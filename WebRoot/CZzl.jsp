<%@page import="com.jxzl.zl.MaterialDAO"%>
<%@page import="com.jxzl.zl.Material"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
         MaterialDAO dao=new MaterialDAO();
         request.setCharacterEncoding("GBK");
         String tname=request.getParameter("tname");
         String mname=request.getParameter("mname");
         List<Material> materials=dao.quickSearch(tname, mname);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��������</title>
 
	
	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">

<script type="text/javascript" src="script/jquery-3.1.0.js"></script>
  </head>
  
  <body>
  <div id="xgmm">
    <form id="form3" method="post" action="CZzl.jsp?shenfen=<%=request.getParameter("shenfen") %>" name="czzl">
    <input id="jiaoyansf" type="hidden" value="<%=request.getParameter("shenfen") %>">
        �ϴ���ʦ:<input type="text" name="tname" value="<%if(request.getParameter("tname")==null)out.print("");else out.println(request.getParameter("tname")); %>" />
        ��������:<input type="text" name="mname" value="<%if(request.getParameter("mname")==null)out.print("");else out.println(request.getParameter("mname")); %>" />
        <input type="submit" name="Submit" value="�ύ" />
  
    </form>
        <table align="center" width="700px" border="1">
           <caption><strong>������Ϣ</strong></caption>
           <tr>
               <th width="150px">���ϱ��</th>
               <th width="100px">������</th>
               <th width="100px">��������</th>
               <th width="100px">�ļ���С</th>
               <th width="150px">�ϴ���ʦ</th>
               <th width="150px">���ϼ��</th>
               <th width="150px">�ϴ�����</th>
               <th width="100px">����</th>
           </tr>
           <%
               for(int i=0;i<materials.size();i++){
               Material material=materials.get(i);
            %>
            <tr>
                <td width="150px"><%=material.getMid() %></td>
                 <td width="100px"><%=material.getMname() %></td>
                <td width="100px"><%=material.getType() %></td>
                <td width="100px"><%=material.getMsize() %></td>
                <td width="150px"><%=material.getTname() %></td>
                <td width="150px"><%=material.getProfile() %></td>
                <td width="150px"><%=material.getScDate() %></td>
                <td width="100px"><a href="downloadServlet.do?filename=<%=material.getMname() %>">����</a> </td>
            </tr>
            <%
                }
             %>
       </table>
 ${errorResult}
 <div id="abq1">
 <a id="fanhui1"  href="<%=request.getContextPath() %>/GLshouye.jsp" style="display:none">���ع���Ա��ҳ</a>
 <a id="fanhui2"  href="<%=request.getContextPath() %>/JSshouye.jsp" style="display:none">���ؽ�ʦ��ҳ</a>
 <a id="fanhui3"  href="<%=request.getContextPath() %>/XSshouye.jsp" style="display:none">����ѧ����ҳ</a>
 </div>
 </div>
 <script type="text/javascript">
onload=function(){
var shenfen=document.getElementById("jiaoyansf").value;
if(shenfen=="GLY"){
					document.getElementById("fanhui1").style.display = "block";
			}else if(shenfen=="JS"){
					document.getElementById("fanhui2").style.display = "block";
			}else if(shenfen=="XS"){
					document.getElementById("fanhui3").style.display = "block";
			}
}
 </script>
  </body>
</html>
