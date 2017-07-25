<%@page import="com.jxzl.user.Administrator"%>
<%@page import="com.jxzl.user.AdministratorDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
    AdministratorDAO dao=new AdministratorDAO();
    request.setCharacterEncoding("GB18030");
   String aid=request.getParameter("userName");
    String password=request.getParameter("password");
    Administrator adm=dao.login(aid, password);
    if(adm==null){
        request.setAttribute("errorMessage", "µÇÂ¼Ê§°Ü£¬ÕÊºÅÃÜÂëÓÐÎó!");
        request.getRequestDispatcher("/Denglu.jsp").forward(request, response);
    }
        else{
            session.setAttribute("Administrator", adm);
            request.getRequestDispatcher("/GLshouye.jsp").forward(request, response);
        }
 %>