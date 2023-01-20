<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ADD NEW EVENT</title>
	
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
<script>
function validate() {
    
    if( document.myForm.eventID.value == "" ) {
       alert( "Please provide your EVENT ID!" );
       document.myForm.eventID.focus() ;
       return false;
    } 
    return( true );
}
</script>
</head>
<body>
<div class="bg-img">

<center>
<form name="myForm" onsubmit = "return(validate());"  action="insert" method="post" class="container">
<center>
<h1>ADD NEW EVENT</h1>

</center>
<table>
	<tr>
		<td>Event ID</td> 
		<td><input type="text" name="eventID"><br></td>
		</tr>
		<tr>
		<td>Event Name</td>
		<td><input type="text" name="eventName"><br></td>
		</tr>
		<tr>
		<td>Location</td> 
		<td><input type="text" name="location"><br></td>
		</tr>
		<tr>
		<td>Music Band</td> 
		<td><input type="text" name="musicBand"><br></td>
		</tr>
		<tr>
		<td>Artist 1 </td>
		<td><input type="text" name="artistA"><br></td>
		</tr>
		<tr><td>Artist 2</td>
		<td><input type="text" name="artistB"><br></td>
		</tr>
		<tr><td>Artist 3</td>
		<td><input type="text" name="artistC"><br></td>
		</tr>
		<tr>
		<td>Date</td>
		<td> <input type="text" name="date"><br></td>
		</tr>
		<tr>
		<td>Tickets</td> 
		<td><input type="text" name="tickets"><br></td>
		</tr>
		</table>
	<br>
		
		<input type="submit" name="submit" value="Create NewEvent"><br><br>
		
		<input type="reset" value="Reset" class="reset-button" required/>
			
		
	</form></center>
	
</div>

</body>
</html>