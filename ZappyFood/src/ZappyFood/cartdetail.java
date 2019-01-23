package ZappyFood;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ProductBean;
import dao.MyDao;

/**
 * Servlet implementation class cartdetail
 */
@WebServlet("/cartdetail")
public class cartdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartdetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
PrintWriter out =response.getWriter();
		
		String quantity=request.getParameter("quantity");
			String pid=request.getParameter("pid");
			HttpSession session=request.getSession();

			String user=(String)session.getAttribute("uid");
			  MyDao m=new MyDao();
			if(user==null)
			{
				user=request.getRemoteAddr();
			}
				ProductBean e=new ProductBean();
				  e.setPid(Integer.parseInt(pid));
				  e.setQuantity(Integer.parseInt(quantity));
				  e.setUser(user);
				   int y=m.quantityCheck(pid, user);
					if(y==0)
					{
					int x =	m.cartdetails(e);
					}
					if(y!=0)
					{
						int x=m.updateQuantityViaCart(e , quantity);
					}
					else
			    	{
			    	out.println("<h3>Product Not Added to your cart</h3>");
			    	}
				         
				      //   System.out.println("true");
				         	  int count = m.cartCount(user); 
							request.setAttribute("count", count);

							
							  ArrayList<ProductBean> list= m.viewProduct();


							  
							  request.setAttribute("LIST", list);
							  
							  
							  RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");
							  
						    request.setAttribute("msg","<h3 style=margin-top:18px;>Product Added To your Cart Successfully...</h3>");
						    rd.forward(request, response);
						    
				
					}
					
           
		 


	  
		  
	
     	
	}

	
