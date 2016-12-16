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

<%@ page import="gr.acteo.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%-- Parameter Loading --%>

<%
  String name = request.getParameter("name");
  String surname = request.getParameter("surname");
  SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
  Date date = sdf.parse(request.getParameter("age"));
  String gender = request.getParameter("gender");
  String specialty = request.getParameter("specialty");
  String cvLink = request.getParameter("cv");
  String sb = request.getParameter("sb");
  String photoLink = request.getParameter("photo");
  String password = request.getParameter("password");
  String passwordRe = request.getParameter("passwordRe");
  String email = request.getParameter("email");

  if(!password.equals(passwordRe)){
    String register = "<a href='register.jsp'>retry.</a>";
    throw new Exception("Passwords do not match. Please " + register);
  }

  Individual individual = new Individual(password,email,name,surname,
    date,gender,specialty,cvLink,sb,photoLink);

  IndividualDAO dao = new IndividualDAO();
  dao.updateIndividualData(individual);
%>

<%-- Redirection --%>

<%
  request.getRequestDispatcher("ind-edit.jsp").forward(request, response);
%>
