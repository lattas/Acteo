<%--

	logout.jsp

	This jsp application is part of the ACTEO Platform 1.0 and handles corporate
  and individual user logout.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>

<%-- Session invalidation --%>

<% if (session != null)
      session.invalidate();
%>

<%-- Forward to log in --%>

<%
  request.getRequestDispatcher("home.jsp").forward(request, response);
%>
