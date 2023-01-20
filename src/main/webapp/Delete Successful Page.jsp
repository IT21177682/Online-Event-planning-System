<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	@import url('//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css');

.info-msg,
.success-msg,
.warning-msg,
.error-msg {
  margin: 10px 0;
  padding: 10px;
  border-radius: 3px 3px 3px 3px;
}

.success-msg {
  color: #270;
  background-color: #DFF2BF;
}



/* Just for CodePen styling - don't include if you copy paste */
html {
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
  font-weight: 300;
  margin: 25px;
}
body {
  width: 640px;
}


</style>
</head>
<body>



<div class="success-msg">
  <i class="fa fa-check"></i>
  DELETE SUCCESSFULY
</div>
<div class="container text-left">
				<a href="customerinsert.jsp" class="btn btn-success">CREATE NEW EVENT</a>
			</div>


</body>
</html>