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
    Corporation corporation;
    String email = (String)session.getAttribute("user");
    CorporationDAO dao = new CorporationDAO();

%>

<%
    if (request.getParameter("corFromSearch") == null) {

      corporation = dao.getCorporationData(email);

    } else {

      corporation = dao.getCorporationData(request.getParameter("corFromSearch"));

    }
%>

<%-- HTML --%>
<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body class="bg-general">
    <%@ include file="menu.jsp" %>

    <div class="section">
    <div class="container">
      <div class="row">
        <!-- Product Image & Available Colors -->
        <div class="col-xs-5">
          <div class="img-thumbnail">
            <div class="img-responsive">
            <img style="width:400px; max-height: 400px;" src="<%=profPicture(corporation.getLogoLink())%>" alt="Item Name">
          </div>
          </div>

        </div>
        <!-- End Product Image & Available Colors -->
        <!-- Product Summary & Options -->
        <div class="col-xs-4 product-details">
          <br>
          <div class="price">
            <%=nullToEmpty(corporation.getName())%>
          </div><br><br>
        <h4>Industry: Maritime</h4>
        <table>

          <!-- Add to Cart Button -->
          <tr>
            <td>
              <a target="_blank" href="<%=nullToEmptyLink(corporation.getWebsite())%>" class="btn btn"><i class="icon-shopping-cart icon-white"></i> Visit Website</a>
            </td>
            <td style="width: 10px">
            </td>
            <td>
              <a href="<%="mailto:" + corporation.getEmail() + "?Subject=Hello " + corporation.getName()%>" class="btn btn"><i class="icon-shopping-cart icon-white"></i> Show interest</a>
            </td>
          </tr>
        </table>
        </div>
        <!-- End Product Summary & Options -->

        <!-- Full Description & Specification -->
      </div>
      <div class="row">
        <div class="col-xs-12">
          <div class="tabbable">
            <!-- Tabs -->
          <ul class="nav nav-tabs product-details-nav">
            <li class="active"><a href="#tab1" data-toggle="tab">Detals</a></li>
          </ul>
          <!-- Tab Content (Full Description) -->
          <div class="tab-content product-detail-info">
            <div class="tab-pane active" id="tab1">
              <h4>Company Description</h4>
              <p>
                <%=nullToEmpty(corporation.getDescription())%>
              </p>
            </div>
          </div>
        </div>
        </div>
        <!-- End Full Description & Specification -->
      </div>
  </div>
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
    String pic = "img/company2.jpg";
    if (in != null && !in.equals("")){
      pic = in;
    }
    return pic;
  }
%>
