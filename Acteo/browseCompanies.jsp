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

<%-- Overriding Custom Css --%>
<link href="css/custom.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/leaflet.css" />
<%-- HTML --%>
<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body>
        
        <%@ include file="menu.jsp" %>
        <div class="login-bgimg">
        <div>
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
                        <div class="input-group">
                            <div class="input-group-btn search-panel">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                    <span id="search_concept">Filter by</span> <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#contains">Category</a></li>
                                    <li><a href="#its_equal">Name</a></li>
                                    <li><a href="#greather_than">Search in description </a></li>
                                    <li class="divider"></li>
                                    <li><a href="#all">Anything</a></li>
                                </ul>
                            </div>
                            <input type="hidden" name="search_param" value="all" id="search_param">         
                            <input type="text" class="form-control" name="x" placeholder="Search term...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <span class="glyphicon glyphicon-search"></span> Search 
                                </button>
                            </span>
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
    </div>
    <%@ include file="footer.jsp"%>
