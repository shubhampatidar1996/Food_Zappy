package ZappyFood;

import java.io.IOException;
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
 * Servlet implementation class viewgridcustomer
 */
@WebServlet("/viewgridcustomer")
public class viewgridcustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewgridcustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
           MyDao m=new MyDao();
		
		HttpSession session=request.getSession();

		String user=(String)session.getAttribute("uid");
		
		if(user==null)
		{
			user=request.getRemoteAddr();
		}
		int count = m.cartCount(user); 
		request.setAttribute("count", count);
	      
		
		ArrayList<ProductBean> list1= m.viewProduct();
	      
	  
	      
	      RequestDispatcher rd=request.getRequestDispatcher("CustomerHome.jsp");
	      request.setAttribute("LIST1", list1);
	      
	      rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
