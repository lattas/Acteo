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

<%-- Overriding Custom Css --%>
<link href="css/custom.css" rel="stylesheet" type="text/css">

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
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="img/avatar.jpg" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          
          <input type="file" class="form-control">
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
          Here you can <strong>edit</strong> your profile information
        </div>
        <h3>Personal info</h3>
        
        <form class="form-horizontal" role="form" action='editController.jsp' method="GET">
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
			  <input name="name" class="form-control" id="name" type="text" placeholder="<%=individual.getName();%>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
			  <input name="surname" class="form-control" id="surname" type="text" placeholder="<%=individual.getSurname();%>">
            </div>
          </div>
		  <div class="form-group">
            <label class="col-lg-3 control-label">Date of Birth</label>
            <div class="col-lg-8">
			  <input name="date" class="form-control" id="date" type="date" placeholder="<%=individual.getDate();%>">    
            </div>
          </div>
		  <div class="form-group">
			<label class="col-lg-3 control-label">Gender:</label>
			<label class="radio-inline"><input type="radio" name="gender" value="male">Male</label>
            <label class="radio-inline"><input type="radio" name="gender" value="female">Female</label>
		 </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Specialty:</label>
            <div class="col-lg-8">
              <input name="specialty" class="form-control" id="specialty" type="text" placeholder="<%=individual.getSpecialty();%>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input name="email" class="form-control" id="email" type="email" placeholder="<%=individual.getEmail();%>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <input name="password" class="form-control" id="password" type="password" placeholder="<%=individual.getPassword();%>">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Confirm password:</label>
            <div class="col-md-8">
              <input name="passwordRe" class="form-control" id="passwordRe" type="password" placeholder="">
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Upload CV</label>
            <div class="col-md-8">
			  <input type="file" name="cv" id="cv"/>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Upload Seaman's Leaflet code</label>
            <div class="col-md-8">
               <input name="specialty" class="form-control" id="specialty" type="text" placeholder="<%=individual.getSLlink();%>">
            </div>
          </div>
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
<%@ include file="footer.jsp"%>
