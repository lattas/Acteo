<%--

browseCompanies.jsp

	This jsp application is part of the ACTEO Platform 1.0 and handles queries for
  for corporate profiles.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="gr.acteo.*" %>
<%@ page import="java.util.List"%>

<%-- Initialisations --%>

<%!
  String searchType;
  String term;
%>

<%-- Parammeters --%>

<%
  searchType = (String)request.getParameter("searchType");
  term = (String)request.getParameter("term");

  if (searchType == null || searchType == "") {
    searchType = "all";
    term = "all";
  }
%>

<%-- Searching --%>

<%
  CorporationDAO DAO = new CorporationDAO();
  List<Corporation> corList = DAO.findCorporations(searchType,term);
%>

<%-- Overriding Custom Css --%>

<link href="css/custom.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/leaflet.css" />

<%-- HTML --%>

<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body class="bg-general">

        <%@ include file="menu.jsp" %>

<!-- Page Title -->

        <div class="section section-breadcrumbs">
                <div class="container">
                        <div class="row">
                                <div class="col-md-12">
                                        <h1>Browse Companies</h1>
                                </div>
                        </div>
                </div>
        </div>
        <br>


<%-- Search Bar --%>

        <div class="container">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                      <div class="form-inline">
                      <form target="_self" method="get" id="search">
                        <div class="form-group">
                          <select name="searchType" form="search" class="form-control">
                            <option value="Name" >Name</option>
                            <option value="Description" <%if(searchType != null) if(searchType.equals("Description")) {out.println("selected='selected'");}%>>Description</option>
                          </select>
                        </div>
                        <div class="form-group" style="width:500px;max-width:80%;">
                          <input type="text" style="width:100%;" class="form-control" name="term" placeholder="<%="Search for: "+term%>">
                        </div>
                        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Search</button>
                      </form>
                    </div>
                </div>
            </div>
          </div>

<%-- Search Results --%>

          <div class="section">
              <div class="container">
                  <div class="row">
                      <div class="col-md-12">
                          <div class="products-slider">

                              <!-- Company Slider Item -->

                              <%
                                for (Corporation corporation: corList) {
                                  if (corporation.getName() != null && !corporation.getName().isEmpty()) {
                              %>

                              <div class="shop-item" style="height:400px;">

                                  <!-- Company Image -->

                                  <div class="image" style="height:250px;">
                                      <a><img src="<%=profPicture(corporation.getLogoLink())%>"
                                            style="max-height:250px;margin:auto;" alt="Item Name"></a>
                                  </div>

                                  <!-- Company Title -->

                                  <div class="title">
                                      <h3><%=nullToEmpty(corporation.getName())%></h3>
                                  </div>

                                  <!-- Website -->

                                  <div class="price">
                                       <a href="<%=nullToEmpty(corporation.getWebsite())%>">Website</a>
                                  </div>

                                  <!-- View Button -->

                                  <div class="actions" >
                                    <form action="cor-view.jsp" method="POST">
                                        <input type="hidden" name="corFromSearch" value="<%=corporation.getEmail()%>">
                                        <button type="submit" class="btn btn-info btn-lg">
                                          <span class="glyphicon glyphicon-briefcase"></span> Details</button>
                                    </form>
                                  </div>
                             </div>
                             <%
                                }}
                              %>
                          </div>
                      </div>
                  </div>
              </div>
          </div>


<!-- Call to Action Bar -->

          <div class="section section-white">
              <div class="container">
                  <div class="row">
                      <div class="col-md-12">
                          <div class="calltoaction-wrapper">

                            <%!
                              String link;
                              String message1;
                              String message2;
                            %>

                            <%
                              if (session.getAttribute("user") != null) {
                                link = session.getAttribute("userType") + "-view.jsp";
                                message1 = "Content is everything!";
                                message2 = "View my profile";

                              } else {
                                link = "page-login.jsp";
                                message1 = "Create your profile now!";
                                message2 = "Login";
                              }
                            %>
                              <h3><%=message1%></h3> <a href="<%=link%>"
                                  class="btn btn-small"><%=message2%></a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>

<%-- Footer --%>

    <%@ include file="footer.jsp"%>

<%-- Functions --%>

    <%!
      /** Instead of printing "null" when the field is empty, we make it an empty
      * string.
      *
      * @param in the String to be examined.
      *
      * @return the string of not null or empty string if null.
      */
      String nullToEmpty(String in) {

        String result = "";
        if (in != null) {
          result = in;
        }
        return result;
      }
    %>

    <%!
      /** Instead of printing "null" when the field is empty, we make it an empty
      * string.
      *
      * @param in the String to be examined.
      *
      * @return the string of not null or empty string if null.
      */
      String nullSpecialty(String in) {

        String result = "No Specialty";
        if (in != null) {
          result = in;
        }
        return result;
      }
    %>

    <%!
      /** Instead of printing "null" when the field is empty, we make it an default
      * picture link.
      *
      * @param in the String to be examined.
      *
      * @return the string of not null or empty string if null.
      */
      String profPicture(String in) {
        String pic = "img/avatar.jpg";
        if (in != null && !in.equals("")){
          pic = in;
        }
        return pic;
      }
    %>
