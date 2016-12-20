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

<%-- HTML --%>
<!DOCTYPE html>
  <html>
    <%@ include file="header.jsp" %>
    <body>
      <%@ include file="menu.jsp" %>

      <!-- Page Title -->
      <div class="section section-breadcrumbs">
  			<div class="container">
  				<div class="row">
  					<div class="col-md-12">
  						<h1>Login</h1>
  					</div>
  				</div>
  			</div>
      </div>

      <div class="login-bgimg">
        <div class="section">
      	  <div class="container">
  			    <div class="row">
  				    <div class="col-sm-5" style="float: none; margin: 0 auto;">
  					    <div class="basic-login">

                  <!-- Login Form -->
  						    <form role="form" action='loginController.jsp' method="POST">
      							<div class="form-group">
      	        			<label for="email"><i class="icon-user"></i> <b>Email</b></label>
      								<input name="email" class="form-control" id="email" type="email" placeholder="">
      							</div>
      							<div class="form-group">
      	        			<label for="password"><i class="icon-lock"></i> <b>Password</b></label>
      								<input name="password" class="form-control" id="password" type="password" placeholder="">
      							</div>
      							<div class="form-group">
      								<!-- <label class="checkbox">
      									<input type="checkbox"> Remember me
      								</label> -->
      								<a href="page-password-reset.html" class="forgot-password">Forgot password?</a>
      								<button type="submit" class="btn pull-right">Login</button>
      								<div class="clearfix"></div>
      							</div>
  						    </form>
  					    </div>

                <div class="basic-login">
                  <div class="not-member">
                    <p>Not a member? <a href="register.jsp">Register here</a></p>
                  </div>
                </div>
              </div>
            </div>


  				<%--<div class="col-sm-7 social-login">
  					<p>Or login with your Facebook or Twitter</p>
  					<div class="social-login-buttons">
  						<a href="#" class="btn-facebook-login">Login with Facebook</a>
  						<a href="#" class="btn-twitter-login">Login with Twitter</a>
  					</div>
  					<div class="clearfix"></div>
  				</div> --%>
          </div>
  	     </div>
       </div>
       <%@ include file="footer.jsp"%>
