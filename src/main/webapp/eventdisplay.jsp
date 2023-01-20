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
<title>Event Planning</title>
<style>
body {
  background-image: url("css/newevent.png");
  height: 100%;
  min-height: 380px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  position: relative;
}</style>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>
     

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #b11c5d">
                    <div>
                        <a href="https://www.javaguides.net" class="navbar-brand"> Event Planning </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Music</a></li>
                    </ul>
                </nav>
                </header>
            
                    <br>

	<div class="row">

		<div class="container">
			<h3 class="text-center">EVENT PLAN LIST</h3>
			<hr>
			<div class="container text-left">
				<a href="customerinsert.jsp" class="btn btn-success">ADD EVENT</a>
			</div>
			</div>
			</div>
<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>package ID</th>
						<th>EvenetID</th>
						<th>Event Name</th>
						<th>Location</th>
						<th>Music band</th>
						<th>Artist 1</th>
						<th>Artist 2</th>
						<th>Artist 3</th>
						<th>Date</th>	
						<th>tickets</th>					
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<td><%= id  %></td>
						<td><%= eventID %></td>
						<td><%= eventName %></td>
						<td><%= location %></td>
						<td><%= musicBand %></td>
						<td><%= artistA %></td>
						<td><%= artistB %></td>
						<td><%= artistB %></td>
						<td><%=  date %></td>
						<td><%= tickets %></td>

					</tr>
				</tbody>

			</table>
		

<div class="container text-right">
				<a href="deleteEvent.jsp" class="btn btn-success">Delete</a>
			
				<a href="updateEvent.jsp" class="btn btn-success">Update</a>
</div>
</body>
</html>