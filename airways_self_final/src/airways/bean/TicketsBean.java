package airways.bean;

import java.util.Date;

public class TicketsBean {
private String ticketno;
private String userid;
private String flightno;
private float fare;
private Date timeofbooking;
public String getTicketno() {
	return ticketno;
}
public void setTicketno(String ticketno) {
	this.ticketno = ticketno;
}
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getFlightno() {
	return flightno;
}
public void setFlightno(String flightno) {
	this.flightno = flightno;
}
public float getFare() {
	return fare;
}
public void setFare(float fare) {
	this.fare = fare;
}
public Date getTimeofbooking() {
	return timeofbooking;
}
public void setTimeofbooking(Date timeofbooking) {
	this.timeofbooking = timeofbooking;
}
@Override
public String toString() {
	return "TicketsBean [ticketno=" + ticketno + ", userid=" + userid
			+ ", flightno=" + flightno + ", fare=" + fare + ", timeofbooking="
			+ timeofbooking + "]";
}
}
