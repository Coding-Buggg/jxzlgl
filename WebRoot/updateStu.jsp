<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import ="com.jxzl.user.Student" %>
<%@ page import="com.jxzl.user.StudentDAO" %>
<%
     StudentDAO dao=new StudentDAO();
      request.setCharacterEncoding("GB18030");
       String password= request.getParameter("password");
		String sname= request.getParameter("sname");
		String ssex= request.getParameter("ssex");
		String major= request.getParameter("major");
		String syear= request.getParameter("syear");
	String sphone= request.getParameter("sphone");
      int sid=Integer.parseInt(request.getParameter("sid"));
		Student student=new Student(sid,password,sname,ssex,major,syear,sphone);
		dao.update(student);
		response.sendRedirect("Allstu.jsp");
%>