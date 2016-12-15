<%--

	footer.jsp

	This jsp application is part of the ACTEO Platform 1.0 and is a static html
  footer file.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<%-- JSP Directives --%>

<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>

<%-- Static HTML --%>
<%@ include file="header.jsp" %>
    <div class="footer">
      <div class="container">
        <div class="row">

          <div class="col-footer col-md-4 col-xs-6">
            <h3>Contact us</h3>
            <p class="contact-us-details">
              <b>Alex Lattas:</b>
              <a href="mailto:info@lattas.eu">info@lattas.eu</a>
              <br>
              <b>Fotis Katsigiannis:</b>
              <a href="maito:katsigiannis.ac@gmail.com">info@katsigiannis.com</a>
            </p>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12">
            <div class="footer-copyright">&copy; 2016 Acteo.</div>
          </div>
        </div>
      </div>
    </div>

    <!-- Javascripts -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/jquery.sequence-min.js"></script>
    <script src="js/jquery.bxslider.js"></script>
    <script src="js/main-menu.js"></script>
    <script src="js/template.js"></script>

  </body>
</html>
