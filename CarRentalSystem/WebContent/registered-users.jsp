<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Registered Users | Car Rental System</title>

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
                <h2>Registered Users </h2>
            </div>
            <div class="blog">
                <div class="row">
                    <div class="col-md-12">
                        <%
                            String error;
                            if (session.getAttribute("type").equals("Staff") || session.getAttribute("type").equals("Admin")) { %>
                        <table class="table table-condensed table-bordered">
                            <thead> <tr>
                                    <th>#</th>
                                    <th>name</th>
                                    <th>email</th>
                                    <th>address</th>
                                    <th>city </th>
                                    <th>phone</th>
                                    <th>active</th>
                                </tr> </thead>
                                <%
                                    try {
                                        // Get connection object from ConnectionProvider.java
                                        Connection conn = ConnectionProvider.getConnection();
                                        // Prepare SQL query
                                        PreparedStatement ps = conn.prepareStatement("SELECT * FROM user");

                                        ResultSet rs = ps.executeQuery();
                                        int count = 1;
                                        while (rs.next()) {
                                            String statusClass = "";
                                            if (rs.getString("active").equals("Active")) {
                                                statusClass = "";
                                            } else {
                                                statusClass = "danger";
                                            }
                                %>

                            <tr class="<%=statusClass%>">
                                <td><%= count++%></td>
                                <td><%= rs.getString("name")%></td>
                                <td><%= rs.getString("email")%></td>
                                <td><%= rs.getString("address")%></td>
                                <td><%= rs.getString("city")%></td>
                                <td><%= rs.getString("phone")%></td>
                                <td><%= rs.getString("active")%></td>
                            </tr>
                            <%
                                    }
                                } catch (Exception ex) {
                                    StringWriter errors = new StringWriter();
                                    ex.printStackTrace(new PrintWriter(errors));
                                    error = "exception" + errors.toString();
                                    out.println(error);
                                }
                            %>
                        </table>
                        <% } else { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                            <strong> Please login: </strong> You must be logged-in to view this page
                        </div>                           
                        <% }%>
                    </div>
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