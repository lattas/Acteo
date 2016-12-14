<%--

	error.jsp

  A basic and to be further developed error page to aid the development phase.

	@author Acteo Devs

--%>

<%-- JSP Directives --%>

<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>

<%@ page isErrorPage='true' %>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">

<%-- Main Page --%>

<!DOCTYPE html>
<html lang='en'>
	<head>
		<meta charset='utf-8'>
		<title>Error</title>
		<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
	</head>

	<body>

		<!DOCTYPE html>
	  <html lang='en'>
	    <head>
	      <meta charset='utf-8'>
	      <meta http-equiv='X-UA-Compatible' content='IE=edge'>
	      <meta name='viewport' content='width=device-width, initial-scale=1'>
	      <meta name='description' content=''>
	      <meta name='author' content=''>
	      <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
	    </head>

	    <body>

	<%-- Navbar If--%>

<% if (user != null) { %>

	      <nav class='navbar navbar-inverse navbar-fixed-top'>
	        <div class='container'>
	          <div class='navbar-header'>
	            <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar' aria-expanded='false' aria-controls='navbar'>
	              <span class='sr-only'>Toggle navigation</span>
	                <span class='icon-bar'></span>
	                <span class='icon-bar'></span>
	                <span class='icon-bar'></span>
	            </button>
	            <a class='navbar-brand' href='page1_ex3_8130086.jsp'>ismgroup39</a>
	          </div>
	          <div id='navbar' class='navbar-collapse collapse'>
	            <ul class='nav navbar-nav'>
	              <li><a href='page1_ex3_8130086.jsp'>Page1</a></li>
	              <li><a href='page2_ex3_8130086.jsp'>Page2</a></li>
	            </ul>
	          </div>
	        </div>
	      </nav>
<% } %> <%-- end if for navbar --%>

	      <div class="container theme-showcase" role="main"> <%-- closes in footer --%>

		<%-- Red Title --%>

			<h2>Σφάλμα</h2><hr>

			<div class="alert alert-danger" role="alert">
				<%=exception.getMessage()%>
			</div>
		</div>

	<%-- Scripts --%>

	<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js'></script>
	<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
