<html>
<%@page import="java.util.ArrayList,beans.ProductBean" %>
<head>

<title></title>
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
                                                    <li><a href="AdminHome.jsp"><font size="2px"> Home</font> </i></a>
                                                    </li>
                                                    <li><a href="AddProduct.jsp"><font size="2px"> Add product details </font></i></a>
                                                    </li>
                                                    <li><a href="ViewProduct"><font size="2px"> View All Product Details </font></i></a>
                                                    </li>
                                                    <li><a href="ViewPendingOrder"><font size="2px"> View All pending orders</font> </i></a>
                                                    </li>
                                                    <li><a href="OrderHistory"><font size="2px"> View Order History</font> </i></a>
                                                    </li>
                                                  </a>
                                                    </li>
                                                        </ul>    
                                                 </ul>
                                            </nav>
                                        </div>
                                    </div>
                                    <div class="header_right_info d-flex">
                                       
                                        <li><a href="Logout.jsp"><font size="5px">Logout</font></a> </li>
                                        </div>  
                        </div>
                    </div>
                </header>
<br>

 
 	  <%
 	  String uid=(String)session.getAttribute("uid");
 	  
 	 if(uid==null)
  	   response.sendRedirect("index.jsp");
	   %>
	<center><font color=red><h1>Welcome,<%=uid%></h1></font><hr/>
	</center>
	${msg}
	
 <div class="container">
   
 <table class="table table-bordered">
 <tr><th>Oid</th><th>Pid</th><th>Quantity</th><th>Price</th><th>Emailid</th><th>Address</th><th>Status</th><th>Date-Time</th></tr>
 <% 
 ArrayList<ProductBean> list=(ArrayList<ProductBean>)request.getAttribute("LIST");
 
 %>
 
 <%
   for(ProductBean ee:list)
   {
	  %>
   	 <tr>
   	<td> <%=ee.getOid()%> </td>
   	<td> <%=ee.getPid()%> </td>
	<td> <%=ee.getQuantity()%> </td>
	 <td><%=ee.getPrice()%> </td>
	 <td><%=ee.getUser()%> </td>
	 <td><%=ee.getAddress()%></td>
	 <td>
	 <% if(ee.getStatus()==1){
	 out.println("DISPATCH");}
	 else
	 {
		 out.println("NOT AVAILABLE");
	 }
	 %> </td>
	  <td><%=ee.getDate()%> </td>
	 <tr/>
	 <%
	 }
  %>  
  </table></div>
  </div>
  
  
  <!-- all js here -->
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