<%@page import="com.jxzl.user.Teacher"%>
<%@page import="com.jxzl.user.TeacherDAO"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>

<%
     TeacherDAO dao=new TeacherDAO();
      request.setCharacterEncoding("GB18030");
       String password= request.getParameter("password");
      int tid=Integer.parseInt(request.getParameter("tid"));
		dao.updatemm(tid,password);
		response.sendRedirect("JSshouye.jsp");
%>