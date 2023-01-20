<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%
    
    //get values from HttpSession
    HttpSession h2=request.getSession();
    
    Integer id=(Integer)h2.getAttribute("id");
	String  eventID=(String)h2.getAttribute("eventID");
	String  eventName=(String)h2.getAttribute("eventName");
	String  location=(String)h2.getAttribute("location");
	String  musicBand=(String)h2.getAttribute("musicBand");
	String  artistA=(String)h2.getAttribute("artistA");
	String  artistB=(String)h2.getAttribute("artistB");
	String  artistC=(String)h2.getAttribute("artistC");
	String  date=(String)h2.getAttribute("date");
	String  tickets=(String)h2.getAttribute("tickets");
	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body, html {
  height: 100%;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("css/event.jpg");

  /* Control the height of the image */
  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.pln{

margin-top: 100px;

}
/* Add styles to the form container */
.container {
  position: cente;
  right: 200px;
  margin-top: 100px;
 
  up: 10px;
  margin: 10px;
  max-width: 400px;
   
  padding: 5px;
  background-color: white;
}

/* Full-width input fields */
  input[type=text] {
  width: 100%;
  padding:15px;
  margin: 5px 0 10px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text] {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
input[type=submit] {
  background-color: #3cb371;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset] {
  background-color: #5a6f6d;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

</style>
</head>
<body>

		
	
<div class="bg-img">

<center>
	<form action="delete" method="post" class="container">
	<center><h1>Delete Event Package </h1></center>
	<table>
	<tr>
			<td>Package ID</td>
			<td><input type="text" name="pid" value="<%= id %>" readonly></td>
		</tr>
		
		<tr>
			<td>EvenetID</td>
			<td><input type="text" name="eventID" value="<%= eventID %>"readonly></td>
		</tr>
		<tr>
			<td>Event Name</td>
			<td><input type="text" name="eventName" value="<%= eventName %>"readonly></td>
		</tr>
		<tr>
		<td>Location</td>
		<td><input type="text" name="location" value="<%=location %>"readonly></td>
	</tr>
	<tr>
		<td>Music band</td>
		<td><input type="text" name="musicBand" value="<%=musicBand  %>"readonly></td>
	</tr>
	<tr>
		<td>Artist 1</td>
		<td><input type="text" name="artistA" value="<%=artistA %>"readonly></td>
	</tr>
	<tr>
		<td>Artist 2</td>
		<td><input type="text" name="artistB" value="<%=artistB  %>"readonly></td>
	</tr>
		<tr>
			<td>Artist 3</td>
			<td><input type="text" name="artistC" value="<%=artistC  %>" readonly></td>
		</tr>
		<tr>
			<td>Date</td>
			<td><input type="text" name="date " value="<%=date %>"readonly></td>
		</tr>
		<tr>
		<td>Tickets</td>
		<td><input type="text" name="tickets " value="<%= tickets %>"readonly></td>
	</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete package">
	</form>
</center>
	
</div>
</body>
</html>