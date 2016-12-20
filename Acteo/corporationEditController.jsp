<%--

	corporationEditController.jsp

	This jsp application is part of the ACTEO Platform 1.0 and constitutes a
        part of the corporational use cases by handling the queries towards the
        DB.

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
  String description = request.getParameter("description");
  String logoLink = request.getParameter("logo");
  String password = request.getParameter("password");
  String website = request.getParameter("website");
  String passwordRe = request.getParameter("passwordRe");
  String email = request.getParameter("email");

  if(!password.equals(passwordRe)){
    String register = "<a href='register.jsp'>retry.</a>";
    throw new Exception("Passwords do not match. Please " + register);
  }
%>

<%-- Update Data --%>

<%
  Corporation corporation = new Corporation(password,email,name,logoLink,
    description,website);

  CorporationDAO dao = new CorporationDAO();
  dao.updateCorporationData(corporation);
%>

<%
  if (password != null && password != "") {

    UserDAO userDAO = new UserDAO();
    userDAO.updatePassword(email, password);

    User userNew = new User(email, password);
    session.setAttribute("user",email);
  }
%>

<%-- Redirection --%>

<%
  request.getRequestDispatcher("cor-edit.jsp").forward(request, response);
%>
