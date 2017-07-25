<%@page import="com.jxzl.user.Teacher"%>
<%@page import="com.jxzl.user.TeacherDAO"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>

<%
     TeacherDAO dao=new TeacherDAO();
      request.setCharacterEncoding("GB18030");
       String password= request.getParameter("password");
		String tname= request.getParameter("tname");
		String tsex= request.getParameter("tsex");
		String post= request.getParameter("post");
		String dept= request.getParameter("dept");
	String tphone= request.getParameter("tphone");
      int tid=Integer.parseInt(request.getParameter("tid"));
		Teacher teacher=new Teacher(tid,password,tname,tsex,post,dept,tphone);
		dao.update(teacher);
		response.sendRedirect("Allteacher.jsp");
%>