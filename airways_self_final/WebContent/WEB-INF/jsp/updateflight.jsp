<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content=" ">
    <meta name="author" content="CreateIT">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />
<title>Admin</title>
</head>
<body>
<%@include file="html/admin.html"%>


<div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li >
                        <a href="adminhome"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="addnewflights"><i class="fa fa-fw fa-bar-chart-o"></i> Add Flights</a>
                    </li>

                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           Admin Panel Dashboard 
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard 
                            </li>
                            <li> Update flights </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

             <div class="col-lg-12" >
                            <div class="panel-heading">
            <table background="green" style=" margin-top: -186px;">

 
<c:forEach  var="f" items="${flightinfo}">
<form:form commandName="flight" action="updateflightdetails">
<tr><td>
FLIGHT NUMBER : </td><td> <label>${f.flightno}</label><input type="hidden" name="flightno" value="${f.flightno}"><br><br></td></tr><br>
<tr><td>

FLIGHT NAME : </td><td> <input type="text" name="flightname" value="${f.flightname}"><br><br></td></tr><br>
<tr><td>

FLIGHT STARTING CITY : </td><td> <input type="text" name="startingcity" value="${f.startingcity}"/><br><br></td></tr><br>
<tr><td>

FLIGHT ENDING CITY : </td><td> <input type="text" name="endingcity" value="${f.endingcity}"/><br><br></td></tr><br>
<tr><td>
FLIGHT DEPARTURE DATE : </td><td> <input type="date" name="departuretime" value="${f.departuretime}"/><br><br></td></tr><br>
<tr><td>

FLIGHT ARRIVAL DATE : </td><td> <input type="date" name="arrivaltime" value="${f.arrivaltime}"/><br><br></td></tr><br>
<tr><td>

FLIGHT FARE ECONOMY : </td><td> <input type="number" name="fareeconomy" value="${f.fareeconomy}"/><br><br></td></tr><br>
<tr><td>

FLIGHT FARE BUSINESS : </td><td> <input type="number" name="farebusiness" value="${f.farebusiness}"/><br><br></td></tr><br>
<tr><td>
FLIGHT SEATS : </td><td><input type="number" name="seats" value="${f.seats}"/><br><br></td></tr><br>
<tr><td>

<input type="submit" value="UPDATE" >
</form:form>
</c:forEach>
</table>
</div></div></div>
</body>
</html>

