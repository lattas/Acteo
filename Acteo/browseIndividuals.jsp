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

        <div class="section">
	    	<div class="container">
                    <div class="row">
                            <%
                              for (Individual individual: indList) {
                            %>
                              <div class="col-sm-4">
                                <div class="shop-item" style="height:500px;">
                                        <!-- Individual Image -->
                                        <div class="image">
                                                <a><img src="<%=profPicture(individual.getPhotoLink())%>" style="height:250px;" alt="Item Name"></a>
                                        </div>
                                        <!-- Individual Title -->
                                        <div class="title">
                                                <h3><%=nullToEmpty(individual.getName())+" "+nullToEmpty(individual.getSurname())%></h3>
                                        </div>

                                        <!-- Individual Credentials-->
                                        <div class="price">
                                                <%=nullToEmpty(individual.getSpecialty())+", "+getAge(individual.getDate())%>
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
                              <%}%>
                            </div>
                            <!-- End Individual -->

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

      age = Integer.toString (yearNow - year);

    } catch (Exception e){
      age = "-";
    }
    return age;
  }
%>
