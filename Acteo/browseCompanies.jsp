<%--

	page-login.jsp

	This jsp application is part of the ACTEO Platform 1.0 and handles corporate
  and individual user login that are registered.

  --To add: Facebook/Linkedin login.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>

<%-- Session --%>

<%
  String searchType = (String)session.getAttribute("searchType");
  String term = (String)session.getAttribute("term");

  if (searchType == null) {
    searchType = "all";
    term = "";
  }
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
        <div class="container">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                      <div class="form-inline">
                      <form action="browseCompanies.jsp" method="get">
                        <div class="form-group">
                          <input list="searchType" type="text" name="searchType" placeholder="Filter By" class="form-control">
                          <datalist id="searchType">
                            <option value="Name">
                            <option value="Category">
                          </datalist>
                        </div>
                        <div class="form-group">
                          <input style="width:450px;" type="text" class="form-control" name="term" placeholder="Search term...">
                        </div>
                        <button type="submit" class="btn btn-default">Search</button>
                      </form>
                    </div>
                </div>
            </div>
          </div>
            <div class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="products-slider">
                                <!-- Company Slider Item -->
                                <div class="shop-item">
                                    <!-- Company Image -->
                                    <div class="image">
                                        <a href="page-company-details.html"><img src="img/company2.jpg" alt="Item Name"></a>
                                    </div>
                                    <!-- Company Title -->
                                    <div class="title">
                                        <h3><a href="page-company-details.html">Company #</a></h3>
                                    </div>
                                    <!-- Company Price -->
                                    <div class="price">
                                         Company Category
                                    </div>
                                    <!-- View Button -->
                                    <div class="actions">
                                        <a href="#" class="btn btn-info btn-lg">
                                            <span class="glyphicon glyphicon-search"></span> Search
                                        </a>
                                    </div>
                               </div>
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
                              <h3>Content is eveything!</h3> <a href="view_candidate_by_candidate.html" class="btn btn-small">View my profile</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
    <%@ include file="footer.jsp"%>
