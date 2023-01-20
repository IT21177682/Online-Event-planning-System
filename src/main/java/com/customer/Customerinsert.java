package com.customer;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String eventID = request.getParameter("eventID");
		String  eventName = request.getParameter("eventName");
		String location= request.getParameter("location");
		String  musicBand = request.getParameter("musicBand");
		String artistA = request.getParameter("artistA");
		String artistB= request.getParameter("artistB");
		String artistC= request.getParameter("artistC");
		String date = request.getParameter("date");
		String tickets = request.getParameter("tickets");
		
		//create HttpSession
		HttpSession h1=request.getSession();
		h1.setAttribute("eventID",eventID);
		
		
boolean isTrue;
		
		isTrue = CustomerDBUtill.insertmusic(eventID,eventName,location,musicBand,artistA,artistB,artistC,date,tickets);
		//String id = request.getParameter("Id");
		if(isTrue == true) {
			//List<music> rd = CustomerDBUtill.getmusicDetails(id);
			//request.setAttribute("cusDetails", rd);
			
			//calling displayDetails() method in displayController class
			displayController.displayDetails(request, response); 
			
			RequestDispatcher dis = request.getRequestDispatcher("eventdisplay.jsp");
			dis.forward(request, response);
			
			
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
		
		//calling displayDetails() method in displayController class
		//displayController.displayDetails(request, response);
	}

}
