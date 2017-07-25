<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import ="com.jxzl.user.Student" %>
<%@ page import="com.jxzl.user.StudentDAO" %>
<%
     StudentDAO dao=new StudentDAO();
      request.setCharacterEncoding("GB18030");
       String password= request.getParameter("password");
      int sid=Integer.parseInt(request.getParameter("sid"));
		dao.updatemm(sid, password);
		response.sendRedirect("XSshouye.jsp");
%>
