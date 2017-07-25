<%@page import="com.jxzl.user.TeacherDAO"%>
<%@page import="com.jxzl.user.Teacher"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
		TeacherDAO dao=new TeacherDAO();
       	request.setCharacterEncoding("GB18030");
        int tid=Integer.parseInt(request.getParameter("tid"));
        String password= request.getParameter("password");
		String tname= request.getParameter("tname");
		String tsex= request.getParameter("tsex");
		String post= request.getParameter("post");
		String dept= request.getParameter("dept");
		String tphone= request.getParameter("tphone");
		Teacher teacher=new Teacher(tid,password,tname,tsex,post,dept,tphone);
		dao.save(teacher);
		response.sendRedirect("Allteacher.jsp");
%>
