<%--

	browseIndividuals.jsp

	This jsp application is part of the ACTEO Platform 1.0 and handles queries
  for individual profiles.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="gr.acteo.*" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Calendar"%>

<%-- Overriding Custom Css --%>
<link href="css/custom.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/leaflet.css" />

<%-- Initialisations --%>

<%!
  String searchType;
  String term;
%>

<%-- Parameters --%>

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
  IndividualDAO DAO = new IndividualDAO();
  List<Individual> indList = DAO.findIndividuals(searchType,term);
%>


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
                                        <h1>Browse Individuals</h1>
                              </div>
                        </div>
                </div>
        </div>
        <br>
          <div class="container">
                  <div class="row">
                      <div class="col-xs-8 col-xs-offset-2">
                        <div class="form-inline">
                        <form target="_self" method="get" id="search">
                          <div class="form-group">
                            <select name="searchType" form="search" class="form-control">
                              <option value="Name">Name</option>
                              <option value="Surname" <%if(searchType != null) if(searchType.equals("Surname")) {out.println("selected='selected'");}%>>Surname</option>
                              <option value="Specialty" <%if(searchType != null) if(searchType.equals("Specialty")) {out.println("selected='selected'");}%>>Specialty</option>
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

<<<<<<< HEAD
<%-- Search Results --%>

            <div class="section">
	    	      <div class="container">
                <div class="row">
                    <%
                      for (Individual individual: indList) {
                        if (individual.getName() != null && !individual.getName().isEmpty()) {
                    %>
                    <div class="col-sm-4">
                      <div class="shop-item" style="height:420px;">

                          <!-- Individual Image -->

                          <div class="image">
                                  <a><img src="<%=profPicture(individual.getPhotoLink())%>" style="height:220px;" alt="Item Name"></a>
                          </div>

                          <!-- Individual Name -->

                          <div class="title panel panel-heading">
                                  <h3 style="font-size:16px"><%=nullToEmpty(individual.getName())+" "+nullToEmpty(individual.getSurname())%></h3>
                          </div>

                          <!-- Individual Credentials-->

                          <div class="price">
                                  <%=nullSpecialty(individual.getSpecialty())+", "+getAge(individual.getDate())%>
                          </div>

                          <!-- View Button -->
=======
        <div class="section">
	    	<div class="container">
                    <div class="row">
                            <%
                              for (Individual individual: indList) {
                                if (individual.getName() != null) {
                            %>
                              <div class="col-sm-4">
                                <div class="shop-item" style="height:420px;">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a><img src="<%=profPicture(individual.getPhotoLink())%>" style="height:220px;" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title panel panel-heading">
                                                <h3 style="font-size:16px"><%=nullToEmpty(individual.getName())+" "+nullToEmpty(individual.getSurname())%></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                <%=nullToEmpty(individual.getSpecialty())+", "+getAge(individual.getDate())%>
                                        </div>
                                        <!-- View Button -->
                                        <div class="actions">
                                          <form action="ind-view.jsp" method="POST">
                                              <input type="hidden" name="indFromSearch" value="<%=individual.getEmail()%>">
                                              <button type="submit" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-user"></span> Details &amp; Contact</button>
                                          </form>
                                        </div>
                                </div>
                              </div>
                              <%
                                }}
                              %>
                            </div>
                            <!-- End Individual -->
>>>>>>> origin/master

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
                                    <h3><%=message1%></h3> <a href="<%=link%>" class="btn btn-small"><%=message2%></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

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
  String profPicture(String in) {
    String pic = "img/avatar.jpg";
    if (in != null && !in.equals("")){
      pic = in;
    }
    return pic;
  }
%>

<%!
  /**
  * Gets age from String using Jodatime
  *
  * @param date birthday date
  *
  * @return age
  *
  * @throws Exception when can't convert to int
  */
  String getAge(String date) {
    String age;
    try {
      int year = Integer.parseInt(date.split("-")[0]);

      Calendar now = Calendar.getInstance();   // Gets the current date and time
      int yearNow = now.get(Calendar.YEAR);

      int ageInt = yearNow - year;
      if (ageInt < 1) {
        age = "-";
      } else {
        age = Integer.toString(ageInt);
      }
    } catch (Exception e){
      age = "-";
    }

    return age;
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
