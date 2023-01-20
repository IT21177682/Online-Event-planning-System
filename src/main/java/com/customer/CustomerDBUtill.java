package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
public static List<Customer> validate(String username, String password) {
		ArrayList<Customer> cus = new ArrayList<>();
		try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int id = rs.getInt(1);
						String name = rs.getString(2);
						String email = rs.getString(3);
						String phone= rs.getString(4);
						String userU=rs.getString(5);
						String passU=rs.getString(6);
						
						Customer c=new Customer(id,name,email,phone,userU,passU);
						
						cus.add(c);
						
					}
				}
				catch(Exception e) {
					e.printStackTrace();
				}
				
				return cus;
	}


public static boolean insertmusic(String eventID, String eventName, String location, String musicBand, String artistA,
		String artistB, String artistC, String date, String tickets) {
boolean isSuccess = false;
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="insert into music values(0,'"+eventID+"','"+eventName+"','"+location+"','"+musicBand+"','"+artistA+"',"
				+ "'"+artistB+"','"+artistC+"','"+date+"','"+tickets+"')";
		int rs = stmt.executeUpdate(sql);
		
	if(rs>0) {
		isSuccess = true;
	}
	else {
			isSuccess = false;
		}
		
		
	}
	catch(Exception e) {
		
		e.printStackTrace();
	}
	
	return isSuccess;
}	
	

 
public static music getmusicDetails(String eventId) throws SQLException {//get event id read the data
		
		//int convertID = Integer.parseInt(Id);
		
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from music where eventID ='"+eventId+"'";
    		rs = stmt.executeQuery(sql);
    		
    		    rs.next();
    			int id = rs.getInt(1);
    			String eventID =rs.getString(2);
    			String eventName = rs.getString(3);
    			String location= rs.getString(4);
    			String musicBand = rs.getString(5);
    			String artistA = rs.getString(6);
    			String artistB=rs.getString(7);
    			String artistC= rs.getString(8);
    			String date = rs.getString(9);
    			String tickets = rs.getString(10);
    			
    			/*public music(int id, String eventID, String eventName, String location, String musicBand, String artistA,
    					String artistB, String artistC, String date, String tickets)*/
    		
    			music c = new music(id,eventID,eventName,location,musicBand,artistA,artistB,artistC,date,tickets);
    		
    	
		return  c;
	}


	
	

public static boolean deletemusic(String id) {
	int connvId = Integer.parseInt(id);
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "DELETE from music where id ='"+connvId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


public static boolean updateEvent(String id, String eventID, String eventName, String location, String musicBand,
		String artistA, String artistB, String artistC, String date, String tickets) {
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update music set eventID='"+eventID+"',eventName='"+eventName+"',musicBand='"+musicBand+"',artistA='"+artistA+"',artistB='"+artistB+"',artistC='"+artistC+"',date='"+date+"',tickets='"+tickets+"'"
				+ "where id='"+id+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs >0){
			
			isSuccess = true;
			
		}else {
			
			isSuccess = false;
		}
	}
	catch(Exception e) {
		
		e.printStackTrace();
	}
	
	return isSuccess;
}
}
