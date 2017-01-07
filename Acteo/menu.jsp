<%--

	menu.jsp

	This jsp application is part of the ACTEO Platform 1.0 and is a static html
  menu file.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- Directives and Imports --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="gr.acteo.*" %> <%--needed?--%>
<link rel="stylesheet" href="css/nav.css" type="text/css">
      <div class="example3">
        <nav class="navbar navbar-default navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class=" img-responsive" href="home.jsp"><img src="img/acteologo.png"  alt="ACTEO">
              </a>
            </div>
            <div id="navbar3" class="navbar-collapse collapse">
              <ul class="nav navbar-nav navbar-right">
                <li class="link-3"><a href="home.jsp">Home</a></li>
                <li class="link-3"><a href="browseCompanies.jsp">Browse Companies</a></li>
                <li class="link-3"><a href="#">Browse Crew</a></li>



      <%
        if (session.getAttribute("user") != null) {
          String editLink = session.getAttribute("userType") + "-edit.jsp";
          String viewLink = session.getAttribute("userType") + "-view.jsp"; %>


                <li class="dropdown">
                  <a href="#" class="dropdown-toggle link-3" data-toggle="dropdown" role="button" aria-expanded="false">My Profile<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="<%=viewLink%>">VIew Profile</a></li>
                    <li><a href="<%=editLink%>">Edit Profile</a></li>
                    <li><a href="logout.jsp"%>Log out</a></li>
                  </ul>
                </li>

      <%
        } else {
      %>

          <li class="link-3">
            <a href="page-login.jsp">Login</a>
          </li>
          <li class="link-3">
            <a href="register.jsp">Register</a>
          </li>
      <%
        }
      %>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
    <!--/.container-fluid -->
  </nav>
</div>
