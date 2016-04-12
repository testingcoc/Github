<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

<title>Insert title here</title>
</head>
<body>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content=" ">
<meta name="author" content="CreateIT">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link
	href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII="
	rel="icon" type="image/x-icon" />

<title>login - Airways</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">


</head>
<body class="gray withAnimation">
	<%@include file="html/userheader.html"%>
	<%-- <%@include file="html/slider.html"%> --%>

	<div class="container">
		<div class="row">

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<div class="title" style="margin-top: 35px;">Your Basic
						Details</div>
				</div>

			</div>
		<div class="container">
			<div class="row">
			<div class="col-md-12">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<div class="authentication">
						<c:forEach var="f" items="${userdetails}">
							<form:form commandName="freshcommand" action="updateuserdetails">

								<div class="form-group col-md-12">
									<label for="username" required class=" col-md-6">User Id : </label> <label>${f.userid}</label><input
										type="hidden" name="userid" value="${f.userid}" class=" col-md-6" /><br>
									<br>
								</div>
								<div class="form-group col-md-12">
									<label for="password" required class=" col-md-6">User Name : </label> <input
										type="text" name="username" value="${f.username}" class=" col-md-6" /><br>
									<br>
								</div>
								<div class="form-group col-md-12">
									<label for="password" required class=" col-md-6">Gender : </label> <input
										type="text" name="gender" value="${f.gender}"  class=" col-md-6"/><br>
									<br>
								</div>
								<div class="form-group col-md-12">
									<label for="password" required class=" col-md-6">Date Of Birth : </label> <input
										type="date" name="userdob" value="${f.userdob}"  class=" col-md-6"/><br>
									<br>
								</div>
								<div class="form-group col-md-12">
									<label for="password" required class=" col-md-6">User Email : </label> <input
										type="text" name="useremail" value="${f.useremail}"  class=" col-md-6"/><br>
									<br>
								</div>
								<div class="form-group col-md-12">
									<label for="password" required class=" col-md-6">User Address : </label> <input
										type="text" name="useraddress" value="${f.useraddress}"  class=" col-md-6"/><br>
									<br>
								</div>
								<div class="form-group col-md-12">
									<label for="password" required class=" col-md-6">Phone No :</label> <input
										type="number" name="userphone" value="${f.userphone}"  class=" col-md-6"/><br>
									<br>
								</div>
								<br>
								<button type="submit" class="btn btn-grey flat btn-lg" Style="margin-left:160px">Update</button>
							</form:form>
						</c:forEach>
					</div>
				</div>
</div>
</div>
</div>

			</div>
		</div>
	</div>
	<%@include file="html/footer.html"%>
	<%@include file="html/Files.html"%>
</body>
</html>

