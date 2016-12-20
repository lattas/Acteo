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

<!-- Navigation & Logo-->
<div class="mainmenu-wrapper">
  <div class="container">
    <nav id="mainmenu" class="mainmenu">
    <ul>

      <li class="logo-wrapper"><a href="index.html"><img src="img/acteologo.png" alt="Acteo Web App Home page"></a></li>
      <li class="active">
        <a href="home.jsp">Home</a>
      </li>

      <li class="has-submenu active">
        <a href="#">Individuals</a>

        <div class="mainmenu-submenu">

          <div class="mainmenu-submenu-inner">
            <h4>Actions</h4>
            <ul>
              <li><a href="browse_companies_by_candidate.jsp">Browse Companies</a></li>
            </ul>
          </div><!-- /mainmenu-submenu-inner -->
        </div><!-- /mainmenu-submenu -->
      </li>

      <li class="has-submenu active">
        <a href="#">Organisations</a>
        <div class="mainmenu-submenu">
          <div class="mainmenu-submenu-inner">
            <h4>Actions</h4>
            <ul>
              <li><a href="browse_candidates_by_company.jsp">Browse Individuals</a></li>
            </ul>

          </div><!-- /mainmenu-submenu-inner -->
        </div><!-- /mainmenu-submenu -->
      </li>

      <%
        if (session.getAttribute("user") != null) {
          String editLink = session.getAttribute("userType") + "-edit.jsp";
          String viewLink = session.getAttribute("userType") + "-view.jsp"; %>


                <li class="has-submenu active">
                  <a href="#">My Profile</a>
                  <div class="mainmenu-submenu">
                    <div class="mainmenu-submenu-inner">
                      <h4>Actions</h4>
                      <ul>
                        <li><a href="<%=viewLink%>">View Profile</a></li>
                        <li><a href="<%=editLink%>">Edit Profile</a></li>
                        <li><a href="logout.jsp"%>Log out</a></li>
                      </ul>

                    </div><!-- /mainmenu-submenu-inner -->
                  </div><!-- /mainmenu-submenu -->
                </li>

      <%
        } else {
      %>

          <li class=" active">
            <a href="page-login.jsp">Login</a>
          </li>

      <%
        }
      %>
      </ul>
    </nav>
  </div>
</div>
