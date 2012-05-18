
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate;
using NHibernate.Cfg;


namespace sell_ticket
{
    public class NHibernateSample
    {
protected ISession Session { get; set; }

    public NHibernateSample(ISession session)
{
    Session = session;
}

    public NHibernateSample()
    {
        // TODO: Complete member initialization
    }

    public void CreateTicket(ticket Ticket )
    {
        Session.Save(Ticket);
       Session.Flush();
    }

    public void CreateSeat(seat Seat)
    {
        Session.Save(Seat);
         Session.Flush();
    }
    public ticket GetTicketById(string TicketId)
    {
        return Session.Get<ticket>(TicketId);
    }
    public seat GetSeatById(string SeatId)
    {
        return Session.Get<seat>(SeatId);
    }
    
    }





}