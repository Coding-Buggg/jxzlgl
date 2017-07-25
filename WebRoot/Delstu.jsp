<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.jxzl.user.StudentDAO" %>
<%
    StudentDAO stu=new StudentDAO();
    stu.delete(Integer.parseInt(request.getParameter("id")));
    response.sendRedirect("Allstu.jsp");
%>