<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Acteo-Crew Selection Platform</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        

                <!-- Navigation & Logo-->
        <div class="mainmenu-wrapper">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
			        		<li><a href="page-login.html">Login</a></li>
							<li><a href="page-register.html">Register</a></li>
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="index.html"><img src="img/acteologo.png" alt="Acteo Web App Home page"></a></li>
						<li class="active">
							<a href="index.html">Home</a>
						</li>

						<li class="has-submenu active">
							<a href="#">Individuals</a>
							<div class="mainmenu-submenu">
								<div class="mainmenu-submenu-inner"> 
									<div>
										<h4>Actions</h4>
										<ul>
											<li><a href="view_candidate_by_candidate.html">View Profile</a></li>
											<li><a href="browse_companies_by_candidate.html">Browse Companies</a></li>
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
											<li><a href="view_company_by_company.html">View Profile</a></li>
											<li><a href="browse_candidates_by_company.html">Browse Individuals</a></li>
										</ul>
										
									</div>
								</div><!-- /mainmenu-submenu-inner -->
							</div><!-- /mainmenu-submenu -->
						</li>
					</ul>
				</nav>
			</div>
		</div>

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
        
        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<div class="basic-login">
							<form role="form" role="form">
								<div class="form-group">
		        				 	<label for="login-username"><i class="icon-user"></i> <b>Username or Email</b></label>
									<input class="form-control" id="login-username" type="text" placeholder="">
								</div>
								<div class="form-group">
		        				 	<label for="login-password"><i class="icon-lock"></i> <b>Password</b></label>
									<input class="form-control" id="login-password" type="password" placeholder="">
								</div>
								<div class="form-group">
									<label class="checkbox">
										<input type="checkbox"> Remember me
									</label>
									<a href="page-password-reset.html" class="forgot-password">Forgot password?</a>
									<button type="submit" class="btn pull-right">Login</button>
									<div class="clearfix"></div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-sm-7 social-login">
						<p>Or login with your Facebook or Twitter</p>
						<div class="social-login-buttons">
							<a href="#" class="btn-facebook-login">Login with Facebook</a>
							<a href="#" class="btn-twitter-login">Login with Twitter</a>
						</div>
						<div class="clearfix"></div>
						<div class="not-member">
							<p>Not a member? <a href="page-register.html">Register here</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>

 <!-- Footer -->
	    <div class="footer">
	    	<div class="container">
		    	<div class="row">
		    		
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Contact us</h3>
		    			<p class="contact-us-details">
	        				<b>Alex Lattas:</b>
	        				 <a href="mailto:info@lattas.eu">info@lattas.eu</a>
							<br/>
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