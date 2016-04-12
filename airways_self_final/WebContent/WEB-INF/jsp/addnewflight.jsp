<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content=" ">
    <meta name="author" content="CreateIT">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAMAAAC8EZcfAAAAWlBMVEX///8AAAYAAKAAAKsAAAYAABcAAAAAADAAAAEAALAAAKEAAMUAAKAAADgAAAAAAAAAABwAAAAAAC0AALMAALYAANYAANIAAPYAANMAAKkAAPsAAP0AAPkAAP8dou52AAAAFXRSTlMAVvn9ZoUQnzL79/v3vzQOkQib+fcwwyU9AAABE0lEQVQYle3aSW7DMBBFQWee48yz73/N7D4TgBAEtALJSr0t0c3inpvN7B2kXZrb9CvAaoDVAKsBVlso8DA11lGaW7cBrAdYDbAaYLWFAr9SY32m2VgtwGqA1QCrAVYrAY/TR3pPJ+k0jWXtBhv9OkBAQEDAhQOHO0vD141tIhYgICAg4N4Ae52nRbEAAQEBAfcG2LpIgICAgICA47tMPcxVAgQEBAQE/Nl16rF6E+30JgECAgIC/jfgWxrLat2m1wQICAgIuD7gS2ofh3uYsaxelVlAQEBAwKUDW9s0Dat1lwABAQEB1wxs3afnNM3mhwQICAgIuGZg6zFNs+8pTbMPsBxgNcBqgNUWD5QkSZKkP+gbWiIqaw3z508AAAAASUVORK5CYII=" rel="icon" type="image/x-icon" />

    <title>Admin panel</title>
    

   
</head>
<body>



<%@include file="html/admin.html"%>

<div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li >
                        <a href="adminhome"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="addnewflights"><i class="fa fa-fw fa-bar-chart-o"></i> Add Flights</a>
                    </li>
                    <li>
                        <a href="viewallflights"><i class="fa fa-fw fa-desktop"></i> View/Update Flights</a>
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
                            <li> Add Flights</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    
                        <div class="col-lg-12" >
                            <div class="panel-heading">
            <table background="green" style=" margin-top: -186px;">

<form:form commandName="flight" action="addflightdetails">
<tr><td><br>
FLIGHT NUMBER :</td><td> <form:input path="flightno" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT NAME :</td><td>  <form:input path="flightname" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT STARTING CITY :</td><td>  <form:input path="startingcity" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT ENDING CITY : </td><td> <form:input path="endingcity" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT DEPARTURE DATE : </td><td> <form:input path="departuretime" type="date" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT ARRIVAL DATE : </td><td> <form:input path="arrivaltime" type="date" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT FARE ECONOMY : </td><td> <form:input path="fareeconomy" type="number" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT FARE BUSINESS : </td><td> <form:input path="farebusiness" type="number" required="required"/><br><br></td></tr><br>
<tr><td>
<br>
FLIGHT SEATS : </td><td> <form:input path="seats" type="number" required="required"/></td></tr><br>
<tr><td>
<br>
<input type="submit" value="ADD" style="width: 200px; height: 32px; margin-left: 30px; background-color: #f5f5f5;">
</form:form></table>
</div></div></div>
</body>
</html>