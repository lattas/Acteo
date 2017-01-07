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
        <div>
        <div>
        <!-- Page Title -->
        <div class="section section-breadcrumbs">
                <div class="container">
                        <div class="row">
                                <div class="col-md-12">
                                        <h1>Browse Individuals</h1>


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
                              <li><a href="#contains">Specialty</a></li>
                              <li><a href="#its_equal">Name</a></li>
                              <li><a href="#greather_than">Age</a></li>
                              <li class="divider"></li>
                              <li><a href="#all">Anything</a></li>
                            </ul>
                        </div>
                        <input type="hidden" name="search_param" value="all" id="search_param">         
                        <input type="text" class="form-control" name="x" placeholder="Search term...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                        </span>
                    </div>
                </div>
            </div>
	</div>

        <div class="section">
	    	<div class="container">
                    <div class="row">
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            <!-- Individual -->
                            <div class="col-sm-4">
                                
                                <div class="shop-item">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a href="page-product-details.html"><img src="img/avatar.jpg" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><a href="page-product-details.html">Name Surname</a></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                Specialty, Age
                                        </div>
                                        <!-- Individual Description-->
                                        <div class="description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse mattis, nulla id pretium malesuada, dui est laoreet risus, ac rhoncus eros diam id odio.</p>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                                <a href="view_candidate_by_company.html" class="btn"><i class="icon-shopping-cart icon-white"></i> View</a>
                                        </div>
                                </div>
                            </div>
                            <!-- End Individual -->
                            
                    </div>
                </div>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
