<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="rentalCar.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>View Cars | Car Rental System</title>

<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
<link rel="shortcut icon" href="images/ico/car-logo.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<!--/head-->

<body>

	<%@ include file="header.jsp"%>

	<section id="blog" class="container">
		<div class="center">
			<h2>View Profile</h2>
		</div>
		<%
			String editAccount = (String) session.getAttribute("edit");
			if (editAccount != null) {
				session.removeAttribute("edit");
		%>
		<div class="alert alert-info" id="info">Info edited successfully.</div>
		<%
			}
		%>
		<div class="blog">
			<div class="form-row">
				<%
					Connection con = ConnectionProvider.getConnection();
					Statement st = con.createStatement();
					ResultSet resultset = st.executeQuery("select * from user where userid='" + session.getAttribute("userid") + "'");
					if (resultset.next()) {
				%>
				<form action="EditUserProfile" method="post">
					<div class="form-group col-md-6">
						<label for="userId">User Id:</label> <input type="text"
							class="form-control" id="userId" placeholder="User Id"
							name="userId" value="<%=resultset.getInt("userId")%>" readonly
							style="border: 1px solid #555;">
					</div>
					<div class="form-group col-md-6"">
						<label for="fullname">Full Name:</label> <input type="text"
							class="form-control" id="name" placeholder="Full Name"
							name="fullname" value="<%=resultset.getString("name")%>"
							style="border: 1px solid #555;">
					</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="email">Email Id:</label> <input type="text"
						class="form-control" id="email" placeholder="Email Id"
						name="email" value="<%=resultset.getString("email")%>"
						style="border: 1px solid #555;">
				</div>
				<div class="form-group col-md-6">
					<label for="mobile">Mobile No:</label> <input type="text"
						class="form-control" id="mobile" placeholder="Mobile No"
						name="mobile" value="<%=resultset.getString("phone")%>"
						style="border: 1px solid #555;" maxlength="10">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-12">
					<label for="address">Address:</label>
					<textarea class="form-control" id="address" placeholder="Address"
						name="address" style="border: 1px solid #555;"><%=resultset.getString("address")%></textarea>
				</div>
				
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="city">City:</label> <input type="text"
						class="form-control" id="city" placeholder="City" name="city"
						value="<%=resultset.getString("city")%>"
						style="border: 1px solid #555;">
				</div>
				<div class="form-group col-md-6">
					<label for="upass">Password:</label> <input type="password"
						class="form-control" id="upass" placeholder="Password" name="upass"
						value="<%=resultset.getString("pwd")%>"
						style="border: 1px solid #555;">
				</div>
			</div>
			<br>
			<br>
			<div class="form-row">
				<div class="form-group col-md-6">
					<input type="submit" value="Update Profile" class="btn btn-success">
				</div>
			</div>
			</form>
			<%
				}
			%>
		</div>
		<!--/.row-->

	</section>
	<!--/#blog-->

	<%@ include file="footer.jsp"%>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/wow.min.js"></script>
	<script type="text/javascript">
	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
	</script>
</body>
</html>