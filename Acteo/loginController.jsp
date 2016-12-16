<%--

	loginController.jsp

	This jsp application is part of the ACTEO Platform 1.0 and the login
  process.

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
%>

<%-- Authentication --%>

<%!
  User user;
%>

<%
  UserDAO dao = new UserDAO();
  user = dao.authenticateUser(email, password);
%>

<%-- Session --%>

<%
  session.setAttribute("user",user);
  session.setAttribute("userType",dao.getUserType(user.getEmail()));
%>

<%-- Redirection --%>

<%
  request.getRequestDispatcher("home.jsp").forward(request, response);
%>
