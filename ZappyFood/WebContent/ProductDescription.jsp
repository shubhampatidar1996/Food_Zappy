<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                                                <span class="cart-icon-inner"></span>
                                                <li><a href="viewgridcustomer"><font size="5px"> Home</font> </i></a>
                                                    </li>
                                                    <li><a href="ViewCart"><font size="5px"><i class="ion-android-cart"><b><span class="cart_count">${count}</span></span>View Cart</b></i></a>
                                                    </li>
                                                    <li><a href=""><font size="5px"> Order History</font> </i></a>
                                                    </li>
                                                    <li><a href="myOrder"><font size="5px"> My Order</font> </i></a>
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
 
 ArrayList<ProductBean> list=(ArrayList<ProductBean>)request.getAttribute("LIST");
 
 %>
         
             <%
 for(ProductBean ee:list)
   {
	   
	  %><div>
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-body shop">
                            <div class="container">
                                <div class="row">
                               
                                    <div class="col-lg-5 col-md-5 col-sm-12">
                                        <div class="product-flags madal">  
                                            <div class="tab-content" id="pills-tabContent">
                                                <div class="tab-pane fade show active" id="imgeone" role="tabpanel" >
                                                    <div class="product_tab_img">
                                                        <a href="#"><img src="imgupload/<%=ee.getFilename()%>" alt style="height: 262px;"></a>    
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="imgetwo" role="tabpanel">
                                                    <div class="product_tab_img">
                                                        <a href="#"><img src="imgupload/<%=ee.getFilename()%>" alt=""></a>    
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="imgethree" role="tabpanel">
                                                    <div class="product_tab_img">
                                                        <a href="#"><img src="imgupload/<%=ee.getFilename()%>" alt=""></a>    
                                                    </div>
                                                </div>
                                            </div>
                                           <!--  <div class="products_tab_button  modals">    
                                                <ul class="nav product_navactive" role="tablist">
                                                    <li >
                                                        <a class="nav-link active" data-toggle="tab" href="#imgeone" role="tab" aria-controls="imgeone" aria-selected="false"><img src="imgupload/<%=ee.getFilename()%>" alt=""></a>
                                                    </li>
                                                    <li>
                                                         <a class="nav-link" data-toggle="tab" href="#imgetwo" role="tab" aria-controls="imgetwo" aria-selected="false"><img src="imgupload/<%=ee.getFilename()%>" alt=""></a>
                                                    </li>
                                                    <li>
                                                       <a class="nav-link button_three" data-toggle="tab" href="#imgethree" role="tab" aria-controls="imgethree" aria-selected="false"><img src="imgupload/<%=ee.getFilename()%>" alt=""></a>
                                                    </li>
                                                </ul>
                                            </div>    -->  
                                        </div>  
                                    </div> 
                                    <div class="col-lg-7 col-md-7 col-sm-12">
                                        <div class="modal_right">
                                            <div class="shop_reviews">
                                                <div class="demo_product">
                                                    <h2><%=ee.getProductname() %></h2> 
                                                </div>
                                                <div class="current_price">
                                                    <span class="regular"><%=ee.getProductprice() %></span>    
                                                    <span class="regular_price" ><%= ee.getProductprice() %></span>    
                                                </div>
                                                <div class="product_information product_modal">
                                                    <div id="product_modal_content">
                                                           
                                                    </div>
                                                    <div class="product_variants">
                                                        <div class="product_variants_item modal_item">
                                                            <span class="control_label">Category</span>
                                                           <p><%=ee.getCategory() %></p>
                                                        </div>   
                                                        <form action="./AddCart" method="post">
                                                       <div class="quickview_plus_minus">
                                                        <input type="text" name="pid" value="<%=ee.getPid()%>" hidden />
                                                            <span class="control_label">Quantity</span>
                                                            <div class="quickview_plus_minus_inner">
                                                                <div class="cart-plus-minus">
                                                                    <input type="text" value="01" name="qty" class="cart-plus-minus-box">
                                                                </div>
                                                               <div class="add_button add_modal">
                                                                    <button type="submit"> Add to cart</button> 
                                                                </div>
                                                            </div>    
                                                        </div> 
                                                      </form>
                                                        <div class="cart_description">
                                                            <p><%=ee.getDescription() %></p>    
                                                        </div>  
                                                    </div>
                                                </div>   
                                            </div>    
                                        </div>    
                                    </div>    
                                </div>
                                 <div class="row">
                                    <div class="col-12">
                                        <div class="social-share">
                                            <h3>Share this product</h3>
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>    
                                        </div>    
                                    </div>    
                                </div>     
                            </div>
                        </div>    
                    </div>
                </div>
            </div> 
            <%} %>
                                
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