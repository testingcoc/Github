package airways.dao;

import java.util.ArrayList;

import airways.bean.TicketDetailsBean;
import airways.bean.Tickets;
import airways.bean.TicketsBean;

public abstract class TicketsDao {
public abstract void AddPassenger(TicketDetailsBean ticketsdetails, TicketsBean tickets);
public abstract void DeletePassenger(String passengername);
public abstract ArrayList<Tickets> ViewPassenger(String ticketno);
}
