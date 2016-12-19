<%--

	cor-edit.jsp

	This jsp application is part of the ACTEO Platform 1.0 and constitutes a
	page where corpo users can insert/ edit data to their profile

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
    User user;
    user = (User)session.getAttribute("user");
    CorporationDAO dao = new CorporationDAO();
    corporation = dao.getCorporationData(user.getEmail());

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
              <!-- left column -->
              <!-- edit form column -->
              <div class="col-md-9 personal-info">
                <div class="alert alert-info alert-dismissable">
                  <a class="panel-close close" data-dismiss="alert">×</a> 
                  <i class="fa fa-coffee"></i>
                  Here you can <strong>edit</strong> your company's information<br>
                  <i>
                      Note: For your own safety we do not store your data files. 
                      Please upload them to your drive and insert the link indicating the file.
                  </i>
                </div>
                <h3>Company info</h3>

                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Title</label>
                    <div class="col-lg-8">
                      <input class="form-control" type="text" value="Jane">
                      <input name="name" class="form-control" id="name" type="text" placeholder="<%=nullToEmpty(corporation.getName())%>" value="<%=nullToEmpty(corporation.getName())%>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Description</label>
                    <div class="col-lg-8">
                      <input name="description" class="form-control" id="description" type="text" placeholder="<%=nullToEmpty(corporation.getDescription())%>" value="<%=nullToEmpty(corporation.getDescription())%>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-3 control-label">Email:</label>
                    <div class="col-lg-8">
                      <input name="email" class="form-control" id="email" type="email" placeholder="<%=corporation.getEmail()%>" value="<%=corporation.getEmail()%>" readonly>
                    </div>
                  </div>
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
                          <div class="form-group">
                    <label class="col-md-3 control-label">Upload Logo</label>
                    <div class="col-md-8">
                      <input name="photo" class="form-control" id="photo" type="text" placeholder="<%=nullToEmpty(corporation.getLogoLink())%>" value="<%=nullToEmpty(corporation.getLogoLink())%>">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="col-md-8">
                      <input type="button" class="btn btn-primary" value="Save Changes">
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