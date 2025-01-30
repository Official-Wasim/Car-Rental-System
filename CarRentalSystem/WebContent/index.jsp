<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Car Rental System</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
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

<body class="homepage">

    <%@ include file="header.jsp" %>  

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/banner-2.jpg);height:450px;"><br>
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <a class="btn-slide animation animated-item-3" href="view-cars.jsp?cars=all">View Cars</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/banner-3.jpg);height:450px;">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <a class="btn-slide animation animated-item-3" href="view-cars.jsp?cars=all">View Cars</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/banner-1.jpg);height:450px;">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <a class="btn-slide animation animated-item-3" href="view-cars.jsp?cars=all">View Cars</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    </section><!--/#main-slider-->
    <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Friendly Local Owners</h2>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <p class="lead">A car rental system is a service provided by companies that allows individuals to rent vehicles for short periods of time, typically ranging from a few hours to a few weeks. This system enables customers to access transportation without the need for long-term ownership or commitment. </p>
                    <p class="lead">User can make reservations through various channels, such as online platforms, mobile apps, or by calling the rental agency directly. During the reservation process, customers provide details such as the desired pick-up and drop-off locations, dates and times, and the type of vehicle they need.</p>
                    <p class="lead">On the scheduled pick-up date and time, customers can collect the reserved vehicle from the designated rental location. At this stage, the rental agency may conduct a pre-rental inspection to document any existing damage or issues with the vehicle.</p>
                    <p class="lead">Once the user has the vehicle, they can use it according to the terms of the rental agreement. This typically includes adhering to mileage limits, fueling requirements, and returning the vehicle in the same condition as when it was rented.</p>
                </div>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#recent-works-->
    <%@ include file="footer.jsp" %>  

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>