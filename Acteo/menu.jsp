<%--

	menu.jsp

	This jsp application is part of the ACTEO Platform 1.0 and is a static html
  menu file.

	@author Alexandros Lattas
  @author Fotis Katsgiannis

--%>

<!-- Navigation & Logo-->
<div class="mainmenu-wrapper">
  <div class="container">
    <nav id="mainmenu" class="mainmenu">
  <ul>
    <li class="logo-wrapper"><a href="index.html"><img src="img/acteologo.png" alt="Acteo Web App Home page"></a></li>
    <li class="active">
      <a href="index.jsp">Home</a>
    </li>

    <li class="has-submenu active">
      <a href="#">Individuals</a>
      <div class="mainmenu-submenu">
        <div class="mainmenu-submenu-inner">
          <div>
            <h4>Actions</h4>
            <ul>
              <li><a href="view_candidate_by_candidate.jsp">View Profile</a></li>
              <li><a href="browse_companies_by_candidate.jsp">Browse Companies</a></li>
            </ul>

          </div>
        </div><!-- /mainmenu-submenu-inner -->
      </div><!-- /mainmenu-submenu -->
    </li>
    <!-- /individuals -->
    <li class="has-submenu active">
      <a href="#">Organisations</a>
      <div class="mainmenu-submenu">
        <div class="mainmenu-submenu-inner">
          <div>
            <h4>Actions</h4>
            <ul>
              <li><a href="view_company_by_company.jsp">View Profile</a></li>
              <li><a href="browse_candidates_by_company.jsp">Browse Individuals</a></li>
            </ul>

          </div>
        </div><!-- /mainmenu-submenu-inner -->
      </div><!-- /mainmenu-submenu -->
    </li>
  </ul>
</nav>
</div>
</div>
