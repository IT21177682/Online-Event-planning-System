<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	
	
	<c:forEach var="cus" items="${cusDetails}">

	<c:set var="id" value="${cus.id}"/>
	<c:set var="eventIDe" value="${cus.eventID}"/>
	<c:set var="eventName" value="${cus.eventName}"/>
	<c:set var="location" value="${cus.location}"/>
	<c:set var="musicBand" value="${cus.musicBand}"/>
	<c:set var="artistA" value="${cus.artistA}"/>
	<c:set var="artistB" value="${cus.artistB}"/>
	<c:set var="artistC" value="${cus.artistC}"/>
	<c:set var="date"    value="${cus.date}"/>
	<c:set var="tickets" value="${cus.tickets}"/>
	
	
	<tr>
		<td>package ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>EvenetID</td>
		<td>${cus.eventID}</td>
	</tr>
	<tr>
		<td>Event Name</td>
		<td>${cus.eventName}</td>
	</tr>
	<tr>
		<td>Location</td>
		<td>${cus.location}</td>
	</tr>
	<tr>
		<td>Music band</td>
		<td>${cus.musicBand}</td>
	</tr>
	<tr>
		<td>Artist 1</td>
		<td>${cus.artistA}</td>
	</tr>
	<tr>
		<td>Artist 2</td>
		<td>${cus.artistB}</td>
	</tr>
	<tr>
		<td>Artist 3</td>
		<td>${cus.artistC}</td>
	</tr>
	<tr>
		<td>Date</td>
		<td>${cus.date}</td>
	</tr>
	<tr>
		<td>Tickets</td>
		<td>${cus.tickets}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value="updateEvent.jsp" var="evtupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="eventID" value="${eventID}"/>
		<c:param name="eventName" value="${eventName}"/>
		<c:param name="location" value="${location}"/>
		<c:param name="musicBand" value="${musicBand}"/>
		<c:param name="artistA" value="${artistA}"/>
		<c:param name="artistB" value="${artistB}"/>
		<c:param name="artistC" value="${artistC}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="tickets" value="${tickets}"/>
	</c:url>
	
	<a href="customerinsert.jsp">
	<input type="button" name="create" value="create My Data">
	</a>
	<a href="${evtupdate}">
	<input type="button" name="update" value="Update event">
	</a>
	
	<br>
	<c:url value="deleteEvent.jsp" var="evtdelete">
		<c:param name="id" value="${id}" />
		<c:param name="eventID" value="${eventID}" />
		<c:param name="eventName" value="${eventName}" />
		<c:param name="location" value="${location}" />
		<c:param name="musicBand" value="${musicBand}" />
		<c:param name="artistA" value="${artistA}"/>
		<c:param name="artistB" value="${artistB}"/>
		<c:param name="artistC" value="${artistC}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="tickets" value="${tickets}"/>
		
	</c:url>
	<a href="${evtdelete}">
	<input type="button" name="delete" value="Delete event">
	</a>
	
		
</body>
</html>