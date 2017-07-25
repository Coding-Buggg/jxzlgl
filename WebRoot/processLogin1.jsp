<%@page import="com.jxzl.user.Student"%>
<%@page import="com.jxzl.user.StudentDAO"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>


<%
    StudentDAO dao=new StudentDAO();
    request.setCharacterEncoding("GB18030");
    int sid=Integer.parseInt(request.getParameter("userName"));
    String password=request.getParameter("password");
    Student stu=dao.login(sid, password);
    if(stu==null){
        request.setAttribute("errorMessage", "登录失败，帐号密码有误!");
        request.getRequestDispatcher("/Denglu.jsp").forward(request, response);
    }
        else{
            session.setAttribute("Student", stu);
            request.getRequestDispatcher("/XSshouye.jsp").forward(request, response);
        }
 %>