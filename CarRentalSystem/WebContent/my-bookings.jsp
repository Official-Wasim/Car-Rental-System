<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="rentalCar.ConnectionProvider"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Rented Cars | Car Rental System</title>

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
</head>
<!--/head-->

<body>
	<%@ include file="header.jsp"%>
	<section id="blog" class="container">
		<div class="center">
			<h2>My Car Bookings</h2>
		</div>
		<div class="blog">
			<div class="row">
				<div class="col-md-12">
					<table class="table table-condensed table-bordered">
						<thead>
							<tr>
								<th>#</th>
								<th>Reg No</th>
								<th>Car Type</th>
								<th>From Date</th>
								<th>To Date</th>
								<th>Per Day Car Rental Price </th>
								<th>Total Rent</th>
								<th>Status</th>
							</tr>
						</thead>
						<%
							try {
							int count=1;
							// Get connection object from ConnectionProvider.java
							Connection con = ConnectionProvider.getConnection();
							Statement st=con.createStatement();
							ResultSet rs=st.executeQuery("select car.regNo,car.carType,rentalrequest.dateFrom,rentalrequest.dateto,car.rentalPrice,rentalrequest.totalRent,rentalrequest.status from rentalrequest,car where car.regNo=rentalrequest.regNo and rentalrequest.userId='"+session.getAttribute("userid")+"'");
							while (rs.next()) {
						%>

						<tr>
							<td><%=count++%></td>
							<td><%=rs.getString("regNo")%></td>
							<td><%=rs.getString("carType")%></td>
							<td><%=rs.getString("dateFrom")%></td>
							<td><%=rs.getString("dateTo")%></td>
							<td><%=rs.getString("rentalPrice")%> Rs/-</td>
							<td><%=rs.getDouble("totalRent") %> Rs/-</td>
							<td><%=rs.getString("status")%></td>
						</tr>
						<%
							}
						} catch (Exception ex) {
							ex.printStackTrace();
						}
						%>
					</table>
				</div>
				<!--/.col-md-8
                </div><!--/.row-->
			</div>
	</section>
	<!--/#blog-->

	<%@ include file="footer.jsp"%>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/wow.min.js"></script>
</body>
</html>