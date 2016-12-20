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
<%@page errorPage="error.jsp"%>

<%
    Individual individual;
    String email = (String)session.getAttribute("user");
    IndividualDAO dao = new IndividualDAO();
    individual = dao.getIndividualData(email);
%>

<%-- HTML --%>
<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body class="bg-general">
    <%@ include file="menu.jsp" %>

    	<div class="container">
        <h1>Individual Profile</h1>
        <div class="row">

          <div class="section">
            <div class="container">
              <div class="row">
                <div class="col-md-8">

                  <div class="panel panel-default">
                    <div class="panel-body">
                      <div class="row">
                        <div class="col-xs-12 col-sm-4 text-center">
                                        <img src="img/avatar.jpg" alt="" class="center-block img-circle img-responsive">
                                        <ul class="list-inline ratings text-center" title="Ratings">
                                          <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                                          <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                                          <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                                          <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                                          <li><a href="#"><span class="fa fa-star fa-lg"></span></a></li>
                                        </ul>
                                </div><!--/col-->


                                <div class="col-xs-12 col-sm-8">
                                    <h2><%=nullToEmpty(individual.getName()) + " " + nullToEmpty(individual.getSurname())%></h2>
                                    <p><strong>Date Of Birth: </strong> 12 </p>
                                    <p><strong>Gender: </strong> Shemale </p>
                                    <p><strong>Specialty:</strong> Mechanic A'</p>
                                </div><!--/col-->



                                <div class="col-xs-12 col-sm-4">
                                    <h2><strong>Explore</strong></h2>
                                    <p><small>Browse companies</small></p>
                                    <a href="browse_companies_by_candidate.html" class="btn btn"><i class="icon-shopping-cart icon-white"></i> Browse</a>
                                </div><!--/col-->
                                <div class="col-xs-12 col-sm-4">
                                    <h2><strong>Update Info</strong></h2>
                                    <p><small>be always up date</small></p>
                                    <a href="edit_profile_by_candidate.html" class="btn btn"><i class="icon-shopping-cart icon-white"></i> Edit Profile</a>
                      </div><!--/col-->
                    </div><!--/row-->
                  </div><!--/panel-body-->
                </div><!--/panel-->



              </div>
            </div>
            </div>

        </div> <%-- row --%>
      </div> <%-- container --%>
    </div> <%-- section --%>

<%@ include file="footer.jsp"%>

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
