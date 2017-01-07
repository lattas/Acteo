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
<%@ page import="gr.Acteo.*" %>
<%@ page import="java.util.List"%>

<%-- Session --%>

<%
  String searchType = (String)session.getAttribute("searchType");
  String term = (String)session.getAttribute("term");

  if (searchType == null || searchType == "") {
    searchType = "all";
    term = "all";
  }
%>

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
        <div class="container">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                      <div class="form-inline">
                      <form target="self" method="get">
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

                                <%
                                  for (Corporation corporation: corList) {
                                    out.println(corporation.getName());
                                %>
                                <br>
                                <div class="shop-item">
                                    <!-- Company Image -->
                                    <div class="image">
                                        <a href="page-company-details.html"><img src="<%=profPicture(corporation.getLogoLink())%>" alt="Item Name"></a>
                                    </div>
                                    <!-- Company Title -->
                                    <div class="title">
                                        <h3><%=nullToEmpty(corporation.getName())%></h3>
                                    </div>
                                    <!-- Company Price -->
                                    <div class="price">
                                         <a href="<%=nullToEmpty(corporation.getWebsite())%>">Website</a>
                                    </div>
                                    <!-- View Button -->
                                    <div class="actions">
                                        <a href="#" class="btn btn-info btn-lg">
                                            <span class="glyphicon glyphicon-search"></span> Search
                                        </a>
                                    </div>
                               </div>
                               <%
                                  }
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
                              <h3>Content is eveything!</h3> <a href="view_candidate_by_candidate.html" class="btn btn-small">View my profile</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
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
      String profPicture(String in) {
        String pic = "img/avatar.jpg";
        if (in != null && !in.equals("")){
          pic = in;
        }
        return pic;
      }
    %>
