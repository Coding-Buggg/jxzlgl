<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import ="com.jxzl.user.Student" %>
<%@ page import="com.jxzl.user.StudentDAO" %>
<%
     StudentDAO dao=new StudentDAO();
      request.setCharacterEncoding("GB18030");
        int sid=Integer.parseInt(request.getParameter("sid"));
        String password= request.getParameter("password");
		String sname= request.getParameter("sname");
		String ssex= request.getParameter("ssex");
		String major= request.getParameter("major");
		String syear= request.getParameter("syear");
		String sphone= request.getParameter("sphone");
		Student student=new Student(sid,password,sname,ssex,major,syear,sphone);
		dao.save(student);
		response.sendRedirect("Allstu.jsp");
%>