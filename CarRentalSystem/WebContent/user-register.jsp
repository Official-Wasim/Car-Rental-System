<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Login | Car Rental System</title>

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
<script type="text/javascript">
	function validateEmail()  
	{  
		var x=document.UserRegister.email.value;  
		var atposition=x.indexOf("@");  
		var dotposition=x.lastIndexOf(".");  
		if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){ 
			document.getElementById("emailloc").innerHTML="Please enter your correct email address";  
			status=false; 
		}
	}
</script>
</head>
<!--/head-->

<body>
	<%@ include file="header.jsp"%>
	<section id="blog" class="container">
		<div class="center">
			<h2>New User Account</h2>
		</div>
		<%
			String account = (String) session.getAttribute("success");
			if (account != null) {
				session.removeAttribute("success");
		%>
		<div class="alert alert-success" id="success">Account
			created successfully.</div>
		<%
			}
		%>
		<div class="blog">
			<div class="row">
				<div class="col-md-12">
					<form class="form-horizontal" method="POST" action="UserRegister"
						data-toggle="validator" name="UserRegister">
						<div class="form-row">
							<div class="form-group col-md-5">
								<label>Full Name</label> <input type="text" name="userfullname"
									class="form-control" placeholder="Full Name" required
									style="border: 1px solid #555;" onkeypress="return lettersValidate(event)">
							</div>
							<div class="form-group col-md-2"></div>
							<div class="form-group col-md-5">
								<label>Email Id</label> <input type="email" name="email" id="email"
									class="form-control" placeholder="Email Id" required
									style="border: 1px solid #555;" onblur="return validateEmail()">

							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-5">
								<label>Address</label> <input type="text" name="address"
									class="form-control" placeholder="Address" required
									style="border: 1px solid #555;" maxlength="60">
							</div>
							<div class="form-group col-md-2"></div>
							<div class="form-group col-md-5">
								<label>City</label> <input type="text" name="city"
									class="form-control" placeholder="City" required
									style="border: 1px solid #555;" maxlength="60" onkeypress="return lettersValidate(event)">

							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-5">
								<label>Mobile No</label> <input type="text" name="mobile"
									class="form-control" placeholder="Mobile No" required
									style="border: 1px solid #555;" onkeypress="return numberValidate(event)" maxlength="10">
							</div>
							<div class="form-group col-md-2"></div>
							<div class="form-group col-md-5">
								<label>Password</label> <input type="password" name="upass"
									class="form-control" placeholder="Password" required
									style="border: 1px solid #555;" oninput="limitChar(this)"
												maxlength="12">

							</div>
						</div>
						
							<input type="submit" class="btn btn-primary"
								value="Create Account">&nbsp;<a href="login.jsp">Already
								Registered, Please Login</a>
						
					</form>
				</div>
				<!--/.col-md-8-->
			</div>
			<!--/.row-->
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
	<script src="js/validator.js"></script>
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
	<script type="text/javascript">
		let limitChar = (element) => {
	        const maxChar = 12;
	        
	        let ele = document.getElementById(element.id);
	        let charLen = ele.value.length;
	        
	        let p = document.getElementById('charCounter');
	        p.innerHTML = maxChar - charLen + ' characters remaining';
	        
	        if (charLen > maxChar) 
	        {
	            ele.value = ele.value.substring(0, maxChar);
	            p.innerHTML = 0 + ' characters remaining'; 
	        }
	    }
		let limitNumber = (element) => {
	        const maxNumber = 6;
	        
	        let ele = document.getElementById(element.id);
	        let numberLen = ele.value.length;
	        
	        let p = document.getElementById('numberCounter');
	        p.innerHTML = maxNumber - numberLen + ' number remaining';
	        
	        if (numberLen > maxNumber) 
	        {
	            ele.value = ele.value.substring(0, maxNumber);
	            p.innerHTML = 0 + ' number remaining'; 
	        }
	    }
		function lettersValidate(key) {
	    	var keycode = (key.which) ? key.which : key.keyCode;
	   		if ((keycode > 64 && keycode < 91) || (keycode > 96 && keycode < 123) || keycode == 32)  
	    	{     
	           return true;    
	    	}else{
	          return false;
	    	}
	         
	    }
		function numberValidate(key) {
	    	var keycode = (key.which) ? key.which : key.keyCode;
	   		if ((keycode > 47 && keycode < 58))  
	    	{     
	           return true;    
	    	}else{
	          return false;
	    	} 
	    }
	</script>
</body>
</html>