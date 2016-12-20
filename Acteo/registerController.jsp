<%--

	registerController.jsp

	This jsp application is part of the ACTEO Platform 1.0 and handles the
  regisrering process

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- JSP Directives --%>

<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>

<%@ page errorPage='error.jsp' %>

<%-- Imports --%>

<%@ page import="gr.acteo.User" %>
<%@ page import="gr.acteo.UserDAO" %>

<%-- Parameter Loading --%>

<%
  String email = request.getParameter("email");
  String password = request.getParameter("password");
  String passwordRe = request.getParameter("passwordRe");
  String type = request.getParameter("userType");
%>

<%
  if(!password.equals(passwordRe)){
    String register = "<a href='register.jsp'>retry.</a>";
    throw new Exception("Passwords do not match. Please " + register);
  }
%>

<%
  UserDAO dao = new UserDAO();
  dao.registerUser(email, password, type);
  User user = dao.authenticateUser(email,password);
%>

<%
  session.setAttribute("user",email);
  session.setAttribute("userType",type.substring(0,3));
%>

<%-- Redirection --%>

<%
  request.getRequestDispatcher(type.substring(0,3)+"-edit.jsp").forward(request, response);
%>
