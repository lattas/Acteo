<%--

	home.jsp

	This jsp application is part of the ACTEO Platform 1.0 and provies a landing
  or home page for Acteo.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>

<%-- Overriding Custom Css --%>
<link href="css/custom.css" rel="stylesheet" type="text/css">

  <%-- HTML --%>
  <!DOCTYPE html>
    <html>
      <%@ include file="header.jsp" %>
      <body class="bg-general">
        <%@ include file="menu.jsp" %>

        <!-- Homepage Slider -->
        <div class="homepage-slider">
        	<div id="sequence">
				<ul class="sequence-canvas">
					<!-- Slide 1 -->
					<li class="bg4">
						<!-- Slide Title -->
						<h2 class="title">To the market's needs</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Our team hopes to bridge the gap that exists in maritime recruiting</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="img/homepage-slider/slide1.png" alt="Slide 1" />
					</li>
					<!-- End Slide 1 -->
					<!-- Slide 2 -->
					<li class="bg3">
						<!-- Slide Title -->
						<h2 class="title">Fast and dynamic</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Fast recrutment leads to better crew and route scheduling</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="img/homepage-slider/slide2.png" alt="Slide 2" />
					</li>
					<!-- End Slide 2 -->
					<!-- Slide 3 -->
					<li class="bg1">
						<!-- Slide Title -->
						<h2 class="title">Diverse Specialties</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Fill in your ship with the most competent crew even from the most demanding roles</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="img/homepage-slider/slide3.png" alt="Slide 3" />
					</li>
					<!-- End Slide 3 -->
				</ul>
				<div class="sequence-pagination-wrapper">
					<ul class="sequence-pagination">
						<li>1</li>
						<li>2</li>
						<li>3</li>
					</ul>
				</div>
			</div>
        </div>
        <!-- End Homepage Slider -->


		<!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>The only crew recruiting company in Greece!</h1>
					</div>
				</div>
			</div>
		</div>

        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="page-portfolio-item.html"><img src="img/individuals.jpg" alt="Project Name"></a>
							</div>
							<div class="portfolio-info-fade">
								<ul>
									<li class="portfolio-project-name">Individuals</li>
									<li>Profile Creation - Editing - Display</li>
									<li>Action: Show interest, Browse companies</li>
									<li class="read-more"><a href="browse_companies_by_candidate.html" class="btn">Review</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="page-portfolio-item.html"><img src="img/organisations.jpg" alt="Project Name"></a>
							</div>
							<div class="portfolio-info-fade">
								<ul>
									<li class="portfolio-project-name">Organisations</li>
									<li>Profile Creation - Editing - Display</li>
									<li>Action: Show Interest, Browse Individuals</li>
									<li class="read-more"><a href="browse_candidates_by_company.html" class="btn">Review</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- End Call to Action Bar -->
<%@ include file="footer.jsp"%>
