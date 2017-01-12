<%--

	ind-view.jsp

	This jsp application is part of the ACTEO Platform 1.0 and constitutes a
	page where users can view an individual's profile.

	@author Alexandros Lattas
	@author Fotis Katsgiannis

--%>
<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="gr.acteo.*" %>

<%-- Overriding Custom Css --%>

<link href="css/custom.css" rel="stylesheet" type="text/css">

<%-- Attribute --%>

<%
    Individual individual;
    String email = (String)session.getAttribute("user");
    IndividualDAO dao = new IndividualDAO();
%>

<%-- Parameters --%>

<%
  if (request.getParameter("indFromSearch") == null) {

    individual = dao.getIndividualData(email);

  } else {

    individual = dao.getIndividualData(request.getParameter("indFromSearch"));
  }
%>

<%-- HTML --%>
<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body class="bg-general">
    <%@ include file="menu.jsp" %>

    	<div class="container">
        <div class="row">

          <div class="section">
              <div class="row">
                <div class="col-md-8" style="float: none; margin: 0 auto;">

                  <%-- Photo --%>
                  <div class="panel panel-default">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-xs-12 col-sm-4 text-center">
                            <img src="<%=profPicture(individual.getPhotoLink())%>" alt="" class="center-block img-circle img-responsive">
                            <ul class="list-inline ratings text-center" title="Ratings">
                              <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                              <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                              <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                              <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                              <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                            </ul>
                        </div>

                        <%-- Name --%>
                        <div class="col-xs-12 col-sm-8">
                            <h2><%=nullToEmpty(individual.getName()) + " " + nullToEmpty(individual.getSurname())%></h2>
                            <p><strong>Date Of Birth: </strong><%=individual.getDate()%></p>
                            <p><strong>Gender: </strong><%=individual.getGender()%></p>
                            <p><strong>Specialty :</strong><%=individual.getSpecialty()%></p>
                            <p><strong>SB Code :</strong><%=individual.getSb()%></p>
                        </div>

                        <%-- CV --%>
                        <div class="portfolio-item-description col-sm-8">
                          <ul class="no-list-style">
                            <li class="portfolio-visit-btn"><a href="<%=nullToEmptyLink(individual.getCvLink())%>" class="btn">View CV</a>
                                <a href="<%="mailto:" + individual.getEmail() + "?Subject=Hello " + individual.getName()%>" class="btn">Send Message</a>
                            </li>
                          </ul>
                        </div>

                        <%-- Browse --%>
                        <div class="col-xs-12 col-sm-8">
                            <h2><strong>Explore</strong></h2>
                            <p><small>Browse Other Individuals</small></p>
                            <a href="browseIndividuals.jsp" class="btn btn"><i class="icon-shopping-cart icon-white"></i> Browse</a>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div> <%-- row --%>
      </div> <%-- container --%>
    </div> <%-- section --%>

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
  * link.
  *
  * @param in the String to be examined.
  *
  * @return the string of not null or empty string if null.
  */
  String nullToEmptyLink(String in) {

    String result = "#";
    if (in != null) {
      result = in;
    }
    return result;
  }
%>


<%!
  /** Instead of showing nothing when the field is empty, a default
  * avatar is shown.
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
