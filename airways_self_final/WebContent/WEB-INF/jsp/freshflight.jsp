<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content=" ">
    <meta name="author" content="CreateIT">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />
	

    <title>login - Airways</title>
     <link rel="stylesheet" type="text/css" href="assets/css/style.css">
 

   <script type="text/javascript">
function f(flightno){
	var url='freshbook?flightno='+flightno;
	window.location.href=url;
}
</script>

<style>



</style>
</head>
<body class="gray withAnimation">
<%@include file="html/userheader.html"%>




 <div class="container">
        <div class="row">
       
                <div class="row">
                 
                 
                
                    <div class="col-md-12">
                        <div class="title" style="margin-top: 35px;">AVAILABLE FLIGHT</div>
                    </div>
                 
                </div>
                <div class="row">
                     
     
<ul class="breadcrumb">
    <li><a href="home">Search</a></li>
    <li><a href="flights" style="color:orange;">Available Flights</a></li>
    <li><a href="login">Log in</a></li>
    
    
</ul>



                
                </div>
                <div class="row">
               
                    <div class="col-md-12">
                        
                            <c:set var="t" value="${type}"/>
<c:if test="${t=='economy'}">
<table class="col-md-12">
<tr ><th>AIRLINES NAMES</th><th>FROM</th><th>TO</th><th>DEPARTURE TIME</th><th>ARRIVAL TIME</th><th>ECONOMY CLASS FARE</th></tr>
<c:forEach  var="f" items="${flightlist}">
<tr><td>${f.flightname}</td><td>${f.startingcity}</td><td>${f.endingcity}</td><td>${f.departuretime}</td><td>${f.arrivaltime}</td><td>${f.fareeconomy}</td><td><input type="button" id="book1" onclick="f('${f.flightno}')" value="BOOK"/></td></tr>
</c:forEach>
</table>
</c:if>
<c:if test="${t=='business'}">
<table>
<tr><th>AIRLINES NAMES</th><th>FROM</th><th>TO</th><th>DEPARTURE TIME</th><th>ARRIVAL TIME</th><th>BUSINESS CLASS FARE</th></tr>
<c:forEach  var="f" items="${flightlist}">
<tr><td>${f.flightname}</td><td>${f.startingcity}</td><td>${f.endingcity}</td><td>${f.departuretime}</td><td>${f.arrivaltime}</td><td>${f.farebusiness}</td><td>
<input type="button" name="book" onclick="f('${f.flightno}')" value="BOOK" class="btn btn-brick flat btn-block uppercase" /></td></tr>
</c:forEach>
</table>
</c:if>
                 
                    </div>

               

                </div>
            </div>
        </div>
    </div>
   
<br/><br/>  
<%-- <form:form commandName="command" action="login"> --%>
<%-- Enter Username : <form:input path="userid"/> --%>
<%-- Enter Password : <form:input path="userpassword"/> --%>
<!-- <input type="submit" value="Submit"> -->
<%-- </form:form> --%>


<%@include file="html/footer.html"%>
<%@include file="html/Files.html"%>
</body>
</html>











