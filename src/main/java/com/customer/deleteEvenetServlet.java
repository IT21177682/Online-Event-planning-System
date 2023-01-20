package com.customer;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteEvenetServlet")
public class deleteEvenetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void doPost(HttpServletRequest request, HttpServletResponse response){
		
		
		String id = request.getParameter("pid");
		boolean isTrue;
		
		
		isTrue = CustomerDBUtill.deletemusic(id);
		
		if (isTrue == true) {
			//RequestDispatcher dispatcher = request.getRequestDispatcher("customerinsert.jsp");
			//dispatcher.forward(request, response);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Delete Successful Page.jsp");
			try {
				dispatcher.forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			//List<music> cusDetails = CustomerDBUtill.getmusicDetails(id);
			//request.setAttribute("cusDetails", cusDetails);
			
			//RequestDispatcher dispatcher = request.getRequestDispatcher("eventdisplay.jsp");
			//dispatcher.forward(request, response);
			
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("Delete Unsuccessful Page.jsp");
			try {
				dispatcher2.forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
	}


}
