<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.jxzl.user.TeacherDAO" %>
<%
    TeacherDAO teacher=new TeacherDAO();
   teacher.delete(Integer.parseInt(request.getParameter("id")));
    response.sendRedirect("Allteacher.jsp");
%>