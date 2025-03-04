<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="rentalCar.ConnectionProvider"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Deactivate | Car Rental System</title>

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
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>

        <%@ include file="admin-header.jsp" %>  

        <section id="blog" class="container">
            <div class="center">
                <h2>Book</h2>
                <p class="lead">Booking declined</p>
            </div>
            <jsp:useBean id="bean" class="rentalCar.RentalRequest"/>
            <div class="blog">
                <div class="row">
                    <div class="col-md-12">
                        <% 
                            String error;
                            if (session.getAttribute("type").equals("Staff") || session.getAttribute("type").equals("Admin")) {
                            try {
                                // Get connection object from ConnectionProvider.java
                                Connection conn = ConnectionProvider.getConnection();
                                // Prepare SQL query
                                PreparedStatement ps = conn.prepareStatement("UPDATE user SET active=? WHERE userid=?");

                                ps.setString(1, "Active");   // set first parameter to email
                                ps.setString(2, request.getParameter("uid"));   // set first parameter to email

                                ps.executeUpdate(); // get the result of the SQL query
                            } catch (Exception ex) {
                                StringWriter errors = new StringWriter();
                                ex.printStackTrace(new PrintWriter(errors));
                                error = "exception" + errors.toString();
                                out.println(error);
                            }
                        %>
                        <h4>User account activated</h4>
                        <jsp:forward page="view-user-accounts.jsp" />
                        <% } else { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                            <strong> Please login: </strong> You must be logged-in to book car!
                        </div>                           
                        <% }%>

                    </div><!--/.col-md-8
                </div><!--/.row-->
                </div>
        </section><!--/#blog-->

        <%@ include file="admin-footer.jsp" %>  

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>