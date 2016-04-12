<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="description" content=" ">
<meta name="author" content="CreateIT">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

<title>login - Airways</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<script type="text/javascript"
	src="<c:url value="resource/js/jquery-1.11.3.min.js"/>"></script>

<style type="text/css">
.hidden {
	display: none;
}
</style>
<script type="text/javascript">
	function f(passengername) {
		var url = 'deletepassenger?passengername=' + passengername;
		window.location.href = url;
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="html/userheader.html"%><br><br>
<div class="container">
		<div class="row">

			<div class="row">
				<div class="col-md-12">
					<div class="title" style="margin-top: 35px;">Your Flight History</div>
				</div>

			</div>
			<div class="row">
				<div class="col-md-12">
	<table class="col-md-12">
		<tr>
			<th>TICKET NUMBER</th>
			<th>PASSENGER NAME</th>
			<th>PASSENGER AGE</th>
			<th>PASSENGER TYPE</th>
			<th>OPTIONS</th>
		</tr>
		<c:forEach var="t" items="${ticketlist}">
			<tr>
				<td>${t.ticketno}</td>
				<td>${t.passengername}</td>
				<td>${t.passengerage}</td>
				<td>${t.passengertype}</td>
				<td><input type="button" id="cancel"
					onclick="f('${t.passengername}')" value="CANCEL" /></td>
			</tr>
		</c:forEach>
		
	</table>
	
	</div>
	</div>
	</div>
	</div><br><br>
	
			<input type="button" id="b1" onclick="func()" value="PAY" class="btn btn-grey flat btn-lg" Style="margin-left:600px">
			<script>
		$("#b1").click(function() {
			$("#cancel").hide();
			$("#b1").hide();
			alert("success");
		});
	</script>
		<br><br>
	<%@include file="html/footer.html"%>
	<%@include file="html/Files.html"%>
</body>
</html>