<%--

	error.jsp

  A basic and to be further developed error page to aid the development phase.

	@author Acteo Devs

--%>

<%-- JSP Directives --%>

<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<%-- HTML --%>

<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body>
    <%@ include file="menu.jsp" %>
		<div class="login-bgimg">
			<h2>Error</h2><hr>

			<div class="alert alert-danger" role="alert">
				<%=exception.getMessage()%>
			</div>
		</div>

	<%-- Scripts --%>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
