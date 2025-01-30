<header id="header">
	<nav class="navbar navbar-inverse" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><h1><font color="white">Car Rental System</font></h1></a>
			</div>

			<div class="collapse navbar-collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">Home</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">View Cars <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="view-cars.jsp?cars=compact">Compact</a></li>
							<li><a href="view-cars.jsp?cars=full size">Full Size</a></li>
							<li><a href="view-cars.jsp?cars=intermediate">Intermediate</a></li>
							<li><a href="view-cars.jsp?cars=luxary">Luxary</a></li>
							<li><a href="view-cars.jsp?cars=premium">Premium</a></li>
							<li><a href="view-cars.jsp?cars=all">All Cars</a></li>
						</ul></li>
					<li class="dropdown">
						<%
							if (session.getAttribute("userid") != null) {
						%> <a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-user"></i> Hi, <%=session.getAttribute("name")%> <i
							class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="my-bookings.jsp">My Bookings</a></li>
							<li><a href="user-view-profile.jsp">View profile</a></li>
							<li><a href="user-edit-profile.jsp">Edit profile</a></li>
							<li><a href="logout.jsp">Logout</a></li>
						</ul>
					</li>
					
					<%
						} else {
					%>
					
					<li><a href="login.jsp" class="btn btn-warning">User Login</a></li>
					<li><a href="admin-login.jsp" class="btn btn-primary">Admin Login</a></li>
					<%
						}
					%>

				</ul>
			</div>
		</div>
		<!--/.container-->
	</nav>
	<!--/nav-->
</header>
<!--/header-->
