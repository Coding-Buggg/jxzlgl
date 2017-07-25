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
    <title>查找资料</title>
 
	
	<link rel="stylesheet" type="text/css" href="styles/xgmm.css">
	<link rel="stylesheet" type="text/css" href="styles/reset.css">

<script type="text/javascript" src="script/jquery-3.1.0.js"></script>
  </head>
  
  <body>
  <div id="xgmm">
    <form id="form3" method="post" action="CZzl.jsp?shenfen=<%=request.getParameter("shenfen") %>" name="czzl">
    <input id="jiaoyansf" type="hidden" value="<%=request.getParameter("shenfen") %>">
        上传教师:<input type="text" name="tname" value="<%if(request.getParameter("tname")==null)out.print("");else out.println(request.getParameter("tname")); %>" />
        资料名称:<input type="text" name="mname" value="<%if(request.getParameter("mname")==null)out.print("");else out.println(request.getParameter("mname")); %>" />
        <input type="submit" name="Submit" value="提交" />
  
    </form>
        <table align="center" width="700px" border="1">
           <caption><strong>资料信息</strong></caption>
           <tr>
               <th width="150px">资料编号</th>
               <th width="100px">资料名</th>
               <th width="100px">资料类型</th>
               <th width="100px">文件大小</th>
               <th width="150px">上传教师</th>
               <th width="150px">资料简介</th>
               <th width="150px">上传日期</th>
               <th width="100px">操作</th>
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
                <td width="100px"><a href="downloadServlet.do?filename=<%=material.getMname() %>">下载</a> </td>
            </tr>
            <%
                }
             %>
       </table>
 ${errorResult}
 <div id="abq1">
 <a id="fanhui1"  href="<%=request.getContextPath() %>/GLshouye.jsp" style="display:none">返回管理员首页</a>
 <a id="fanhui2"  href="<%=request.getContextPath() %>/JSshouye.jsp" style="display:none">返回教师首页</a>
 <a id="fanhui3"  href="<%=request.getContextPath() %>/XSshouye.jsp" style="display:none">返回学生首页</a>
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
