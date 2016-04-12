<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="description" content=" ">
<meta name="author" content="CreateIT">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="html/userheader.html"%><br>
	<br>
	<div class="container">
		<div class="row">

			<div class="row">
				<div class="col-md-12">
					<div class="title" style="margin-top: 35px;">Your Flight
						History</div>
				</div>

			</div>
			<div class="row">
				<div class="col-md-12">
					<table class="col-md-12">
						<tr>
							<th>PASSANGER NAME</th>
							<th>PASSANGER AGE</th>
							<th>PASSANGER TYPE</th>
							<th>PASSANGER GENDER</th>
						</tr>
						<c:forEach var="f" items="${flightmoreinfo}">
							<tr>
								<td>${f.passengername}</td>
								<td>${f.passengerage}</td>
								<td>${f.passengertype}</td>
								<td>${f.passengergender}</td>
							</tr>
						</c:forEach>
					</table>
					</div>
	</div>
	</div>
	</div><br><br>
	<%@include file="html/footer.html"%>
	<%@include file="html/Files.html"%>
</body>
</html>