<%@page import="com.jxzl.user.TeacherDAO"%>
<%@page import="com.jxzl.user.Teacher"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>


<%
    TeacherDAO dao=new TeacherDAO();
    request.setCharacterEncoding("GB18030");
    int tid=Integer.parseInt(request.getParameter("userName"));
    String password=request.getParameter("password");
    Teacher teacher=dao.login(tid, password);
    if(teacher==null){
        request.setAttribute("errorMessage", "登录失败，帐号密码有误!");
        request.getRequestDispatcher("/Denglu.jsp").forward(request, response);
    }
        else{
            session.setAttribute("Teacher", teacher);
            request.getRequestDispatcher("/JSshouye.jsp").forward(request, response);
        }
 %>