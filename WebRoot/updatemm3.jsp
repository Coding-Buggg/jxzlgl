
<%@page import="com.jxzl.user.AdministratorDAO"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>

<%
     AdministratorDAO dao=new AdministratorDAO();
      request.setCharacterEncoding("GB18030");
       String password= request.getParameter("password");
    String aid=request.getParameter("aid");
		dao.updatemm(aid,password);
		response.sendRedirect("GLshouye.jsp");
%>