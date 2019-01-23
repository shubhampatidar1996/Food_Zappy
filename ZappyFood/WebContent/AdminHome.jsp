<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
   
   <% 
	  	String uid=(String)session.getAttribute("uid");
        if(uid==null)
	   response.sendRedirect("index.jsp");
	   %>
	<center><font color="red"><h1>Welcome <%=uid %> </h1></font><hr/>
	</center>
</body>
</html>