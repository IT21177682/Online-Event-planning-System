package com.customer;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class displayController extends HttpServlet {
	
	public static void displayDetails(HttpServletRequest request,HttpServletResponse response) {
		
		//get eventID value from session
		HttpSession h1=request.getSession();
		String eventID=(String)h1.getAttribute("eventID");
		
		//passing eventID to CustomerDBUtill class
		music m=null;
		
		try {
			m=CustomerDBUtill.getmusicDetails(eventID);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//create another HttpSession for store values in music object
		HttpSession h2=request.getSession();
		
		h2.setAttribute("id", m.getId());
		h2.setAttribute("eventID",m.getEventID() );
		h2.setAttribute("eventName", m.getEventName());
        h2.setAttribute("location",m.getLocation());
		h2.setAttribute("musicBand",m.getMusicBand() );
		h2.setAttribute("artistA",m.getArtistA() );
		h2.setAttribute("artistB",m.getArtistB() );
		h2.setAttribute("artistC",m.getArtistC() );
		h2.setAttribute("date",m.getDate() );
		h2.setAttribute("tickets",m.getTickets() );
		
		/*
		//create RequestDispatcher
		RequestDispatcher rd=request.getRequestDispatcher("Display Details.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		
		
		
	}

}
