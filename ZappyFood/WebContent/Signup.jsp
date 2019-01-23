<html>
<head>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
 <%@include file="Header.jsp" %>
</head>
<body style="background-color:#efeef4;">

<div class="organic_food_wrapper">
                <!--Header start-->
                <header class="header sticky-header" style="background-color:#c3c1ad">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="header_wrapper_inner">
                                   
                                    <div class="logo col-xs-12">
                                        <a href="index.html">
                                            <img src="assets/img/zappy-logo.png" alt="">
                                        </a>
                                    </div>
                                    <br>
                                    
                                    <div class="main_menu_inner">
                                      
                                        <div class="menu">
                                            <nav>
                                                <ul>
                                                <span class="cart-icon-inner"></span>
                                                <li><a href="index.jsp"><font size="5px"> Home</font> </i></a>
                                                    <li>
                                                    
                                                    

                                                        </ul>    
                                                 </ul>
                                            </nav>
                                        </div>
                                    </div>
                                    <div class="header_right_info d-flex">
                                       
                                        <li><a href="Login.jsp"><font size="5px"> Login</font> </i></a>
                                                    </li>
                        </div>
                    </div>
                </header>

  <br>
  <br>
${msg}
<br>
<br>
<div class="span3">
    <h2>Sign Up</h2>
    <form action="SignUp" method="post">
    <label>Name</label>
    <input type="text" name="name" class="span3" required="required">
    <label>Email ID</label>
    <input type="email" name="emailid" class="span3" required="required">
    <label>Password</label>
    <input type="password" name="password" class="span3" pattern=".{8,}" title="Must contain at least 8 or more characters">
    <label>Address</label>
    <input type="text" name="address" class="span3" required="required">
    <label>MobileNo</label>
    <input type="text" name="mobileno" pattern="[1-9]{1}[0-9]{9}" class="span3"  required="required">
    <input type="submit" value="Sign up" class="btn btn-primary pull-left">
    <div class="clearfix"></div>
    </form>
</div>


        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.meanmenu.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
  

</body>
</html>