<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="Header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
        

<script type="text/javascript">
function check(i) 
{
	 var q=document.getElementById('q'+i).value;
	  var up=document.getElementById('p'+i).value;
	  var cid=document.getElementById('cid'+i).value;
	 document.getElementById('total'+i).value=q*up;
	 
	  var xhttp = new XMLHttpRequest();
	  //
	 // var quantity=document.getElementById('q').value;
	  xhttp.open("POST", "UpdateViewCart?cid="+cid+"&q="+q, true);
	  xhttp.send();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("gtot").innerHTML = this.responseText;
	    
	    	   }
	  };
	  
	}
</script>

</head>
<body>
 <%@page import="java.util.ArrayList,beans.ProductBean" %>
<%
 	  String uid=(String)session.getAttribute("uid");
 	 if(uid==null) 
 	  {%>
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
                                                <li><a href="viewgrid"><font size="5px"> Home</font> </i></a>
                                                    </li>
                                                    <li><a href="ViewCart"><font size="5px"><i class="ion-android-cart"><b><span class="cart_count">${count}</span></span>View Cart</b></i></a>
                                                    </li>
                                                    

                                                        </ul>    
                                                 </ul>
                                            </nav>
                                        </div>
                                    </div>
                        </div>
                    </div>
</div>
</div>
</header>
 <%} %>
 <% if(uid!=null) 
 	  {%>
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

 <%} %>
 <div style="padding-top: 70px;"></div>
 ${msg}
 
 <div class="container">
   
 <table class="table table-hover" style="
    margin-top: 65px;">
 <tr><th>Pimage</th><th>Pname</th><th>Price</th><th>Quantity</th><th>Total</th></tr>
 <% 
 ArrayList<ProductBean> list=(ArrayList<ProductBean>)request.getAttribute("LIST");
 
 %>
 <%
 int i=0;
   for(ProductBean ee:list)
   {
	  %>
	  <%
 int price=Integer.parseInt(ee.getProductprice());
 
	  
 %>
 
   	 <tr>
   <input type="hidden"   value="<%=ee.getCid()%>" readonly  name="cid" id="cid<%=i %>" />
   	<td> <img src="imgupload/<%=ee.getImage()%>" height="100"width="165" /> </td>
   	<td> <%=ee.getProductname()%> </td>
   	<td> <input type="text"   value="<%=ee.getProductprice()%>" readonly name="price" id="p<%=i%>"/>
   	 </td>
   	<td > 
     <input type="text" value="<%=ee.getQuantity()%>" name="qunatity" id="q<%=i %>" onKeyUp="check(<%=i%>);"/> 
    </td>
	<td> <input  value="<%=price*ee.getQuantity()%>"  name="t" id="total<%=i%>" readonly/> </td>
	<td> <a href="CartDelete?cartid=<%=ee.getCid()%>" class="glyphicon glyphicon-remove-sign"  onClick="return confirm('Do you really want to delete this record?')">Delete From Cart</a> </td>
	
	 <tr/>
	 <%i++;
	 }
  %>
 </table></div>
 <%ArrayList<ProductBean> listt=(ArrayList<ProductBean>)request.getAttribute("LISTT"); %>
 <% 
 for(ProductBean ee:listt)
 {
	 
	  %>
	<div class="col-lg-11 col-sm-11 col-md-11">
	 <div class="cart_totals text-right">
	  <h1>Cart Total</h1>
	  <div class="order-total">
	  <span><strong><h3>Grand Total:</h3></strong></span>
	 <strong><h3> <div id="gtot"><%=ee.getTotal() %></div></h3></strong>
    </div>
    </div>
    </div>
   
 <%
	 }
  %>
  <div class="container">
	<div class="col-sm-6">
<form action="CheckOut" method="post">
<div class="form-group">
    <label for="address">Delivery Address:</label>
   <textarea name="daddress" class="form-control" required="required" ></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Check Out</button>
</form>
</div>
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
