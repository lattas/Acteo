<%--

	ind-edit.jsp

	This jsp application is part of the ACTEO Platform 1.0 and constitutes a
	page where individual users can insert/ edit data to their profile

	@author Alexandros Lattas
	@author Fotis Katsgiannis

--%>
<%-- JSP Directives --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="gr.acteo.*" %>

<%-- Overriding Custom Css --%>

<link href="css/custom.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<%-- Attributes --%>

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
          <h1>Edit Profile</h1>
        	<hr>
      	<div class="row">

          <!-- Warnings and info -->
          <div class="col-md-9 personal-info">
            <div class="alert alert-info alert-dismissable">
              <a class="panel-close close" data-dismiss="alert">×</a>
              <i class="fa fa-coffee"></i>
              Here you can <strong>edit</strong> your profile information. <br>
              <i>Note: For your own safety we do not store your data files. Please upload them to your drive and insert the link indicating the file.</i>
            </div>

            <div class="alert alert-warning alert-dismissable">
              <a class="panel-close close" data-dismiss="alert">×</a>
              <i class="fa fa-coffee"></i>
              <strong>Warning!</strong> You will not show up to others if you do not fill the following information.
            </div>

  <%-- Edit form --%>

            <form class="form-horizontal" role="form" action='individualEditController.jsp' method="POST">

              <%-- Name --%>
              <div class="form-group">
                <label class="col-lg-3 control-label">First name:</label>
                <div class="col-lg-8">
    			           <input name="name" class="form-control" id="name" type="text"
                       placeholder="<%=nullToEmpty(individual.getName())%>"
                       value="<%=nullToEmpty(individual.getName())%>">
                </div>
              </div>

              <%-- Surname --%>
              <div class="form-group">
                <label class="col-lg-3 control-label">Last name:</label>
                <div class="col-lg-8">
    			           <input name="surname" class="form-control" id="surname"
                       type="text" placeholder="<%=nullToEmpty(individual.getSurname())%>"
                       value="<%=nullToEmpty(individual.getSurname())%>">
                </div>
              </div>

              <%-- Date --%>
    		      <div class="form-group">
                <label class="col-lg-3 control-label">Date of Birth</label>
                <div class="col-lg-8">
    			           <input name="date" class="form-control" id="date" type="text"
                       placeholder="<%=individual.getDate()%>"
                       value="<%=nullToEmpty(individual.getDate())%>">
                </div>
              </div>

              <%-- Gender --%>
             <div class="form-group">
               <div class="form-inline">
               <label class="col-lg-3 control-label">Gender:</label>
                <div class="col-lg-3">
                  <select class = "form-control" name="gender" id=gender>
                    <option  value="male" <%if(nullToEmpty(individual.getGender()).equals("male")){out.println("selected='selected'");}%>>Male</option>
                    <option value="female" <%if(nullToEmpty(individual.getGender()).equals("male")){out.println("selected='selected'");}%>>Female</option>
                  </select>
                </div>
             </diV>
           </div>

          <%-- Specialty --%>
          <div class="form-group">
            <label class="col-lg-3 control-label">Specialty:</label>
            <div class="col-lg-8">
              <input name="specialty" class="form-control" id="specialty" type="text" placeholder="<%=nullToEmpty(individual.getSpecialty())%>" value="<%=nullToEmpty(individual.getSpecialty())%>">
            </div>
          </div>

          <%-- Email --%>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input name="email" class="form-control" id="email" type="email"
                placeholder="<%=individual.getEmail()%>"
                value="<%=individual.getEmail()%>" readonly>
            </div>
          </div>

          <%-- Password --%>
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <input name="password" class="form-control" id="password" type="password" placeholder="">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Confirm password:</label>
            <div class="col-md-8">
              <input name="passwordRe" class="form-control" id="passwordRe" type="password" placeholder="">
            </div>
          </div>

          <%-- CV --%>
          <div class="form-group">
              <label class="col-md-3 control-label">Upload CV</label>
              <div class="col-md-8">
                 <input name="cv" class="form-control" id="cv" type="text" placeholder="<%=nullToEmpty(individual.getCvLink())%>" value="<%=nullToEmpty(individual.getCvLink())%>">
              </div>
          </div>

          <%-- SL code --%>
		      <div class="form-group">
            <label class="col-md-3 control-label">Upload Seaman's Leaflet code</label>
            <div class="col-md-8">
               <input name="sb" class="form-control" id="sb" type="text" placeholder="<%=nullToEmpty(individual.getSb())%>" value="<%=nullToEmpty(individual.getSb())%>">
            </div>
          </div>

          <%-- Profile Picture --%>
          <div class="form-group">
            <label class="col-md-3 control-label">Change Profile Picture</label>
            <div class="col-md-8">
               <input name="photo" class="form-control" id="photo" type="text" placeholder="<%=nullToEmpty(individual.getPhotoLink())%>" value="<%=nullToEmpty(individual.getPhotoLink())%>">
            </div>
          </div>

          <%-- Save --%>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input type="submit" class="btn btn-primary" value="Save Changes">
              <span></span>
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>

        </form>
      </div>
  </div>
</div>
<hr>

<%-- Footer --%>

<%@ include file="footer.jsp"%>

<%-- functions --%>

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

<%-- Scripts --%>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
  $( function() {
    $( "#date" ).datepicker({
      dateFormat: 'yy-mm-dd'
    })
  } );
</script>
