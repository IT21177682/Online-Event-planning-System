package com.customer;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	public void doPost(HttpServletRequest request, HttpServletResponse response){
		
		String id = request.getParameter("pid");
		String eventID =request.getParameter("eventID");
		String eventName =request.getParameter("eventName");
		String location =request.getParameter("location");
		String musicBand =request.getParameter("musicBand");
		String artistA =request.getParameter("artistA");
		String artistB =request.getParameter("artistB");
		String artistC =request.getParameter("artistC");
		String date =request.getParameter("date");
		String tickets =request.getParameter("tickets");
		
		System.out.println("ID: "+id);
		System.out.println("event ID: "+eventID);
		System.out.println("Tickets: "+tickets);
		System.out.println("location: "+location);
		
		
		
		boolean isTrue;
		isTrue= CustomerDBUtill.updateEvent(id, eventID, eventName, location, musicBand, artistA, artistB, artistC, date, tickets);
		
		System.out.println("Result: "+isTrue);
		if(isTrue == true) {
			
			//List<music> cusDetails = CustomerDBUtill.getmusicDetails(id); //id use
			//request.setAttribute("cusDetails", cusDetails);
			
			//RequestDispatcher dis = request.getRequestDispatcher("eventdisplay.jsp");
			//dis.forward(request,response);
			
			RequestDispatcher dis = request.getRequestDispatcher("Update Unsuccessful Page.jsp");
			try {
				dis.forward(request,response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			
			//List<music> cusDetails = CustomerDBUtill.getmusicDetails(id);
			//request.setAttribute("cusDetails", cusDetails);
			
			//RequestDispatcher dis2 = request.getRequestDispatcher("eventdisplay.jsp");
			//dis2.forward(request,response);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("Update Successful Page.jsp");
			try {
				dis2.forward(request,response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
