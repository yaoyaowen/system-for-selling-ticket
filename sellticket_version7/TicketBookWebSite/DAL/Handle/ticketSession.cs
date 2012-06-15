using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using DAL;
using NHibernate;

using Castle;
using Castle.Components;
using Castle.DynamicProxy;
using NHibernate.Criterion;



namespace DAL.Handle
{
    public  class ticketSession :IDisposable
    {
        private ISession session;
        
        public ticketSession()
        {
            session = NHibernateHelper.GetSession();
        }



        public void Dispose()
        {
            session.Dispose();
        }


        public ticket getTicketByID(string id)
        {
            //object iterm = session.Get(id);
            return (ticket)session.Get<ticket>(id);
        }


        public bool saveTicket(ticket tk)
        {
            ITransaction it = session.BeginTransaction();
            try
            {
                session.Update(tk);
                it.Commit();
                return true;
            }
            catch (Exception)
            { 
                it.Rollback();
                return true;
            }

        }




        public bool addTicketInfo(ticket Tic)
        {
            ITransaction it = session.BeginTransaction();
            try
            {

                session.Save(Tic);
                it.Commit();
                return true;
            }
            catch (Exception)
            {
                it.Rollback();
                return false;
            }

        }


        public IList<ticket> getTicketByTimeAndPos(string position, string time)
        {
            ICriteria ic = session.CreateCriteria(typeof(ticket)).Add(Restrictions.Eq("date", time)).Add(Restrictions.Eq("endpos", position));

            if (ic.List<ticket>().Count != 0)
                return ic.List<ticket>();
            else
                return null;
        }




        



        public IList<ticket> getTicketByTime(string endtime,string startTime)
        {
            ICriteria ic = session.CreateCriteria(typeof(ticket)).Add(Restrictions.Lt("date", endtime)).Add(Restrictions.Gt("date", startTime));
            
            return ic.List<ticket>();

            //return null;
        }



        public IList<ticket> getTicketByEndPos(string endPos)
        {
            ICriteria ic = session.CreateCriteria(typeof(ticket)).Add(Restrictions.Eq("endpos",endPos));

            return ic.List<ticket>();

            //return null;
        }


        public bool backTicket(string ticketInfoID, int seatNum)
        {

            var it = session.BeginTransaction();

            try
            {
                ticket ti = session.Get<ticket>(ticketInfoID, LockMode.Write);
                if (ti.seatPosition[seatNum - 1] == '1')
                {
                    StringBuilder str = new StringBuilder(ti.seatPosition);
                    //该座位没有被坐 这里使用的是StringBuilder
                    str[seatNum - 1] = '0';

                    ti.seatPosition = str.ToString();

                    session.Save(ti);
                    it.Commit();
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception)
            {
                it.Rollback();
            }



            return false;
        }


        public bool takeTicket(List<int> sitNums, string ticketInfoID)
        {
            var it = session.BeginTransaction();

            try
            {
                ticket ti = session.Get<ticket>(ticketInfoID);

                for (int i = 0; i < sitNums.Count;i++ )
                    if (ti.seatPosition[sitNums[i] - 1] == '0')
                    {
                        //该座位没有被坐 这里使用的是StringBuilder

                        StringBuilder str = new StringBuilder(ti.seatPosition);

                        str[sitNums[i] - 1] = '1';
                        ti.seatPosition = str.ToString();
                        ti.remainseat = ti.remainseat - 1;


                    }
                    else
                    {
                        return false;
                    }

                session.Save(ti);
                it.Commit();
                return true;

            }
            catch (Exception ex)
            {

                it.Rollback();
            }

            return false;
        }




        public bool takeTicket(int seatNum, string ticketInfoID,string type="0")
        {
            // type=0   正常票   type=1 学生票    type=2 其他类别   type=3 军人票
            



           var it = session.BeginTransaction();

           try
           {
               ticket ti = session.Get<ticket>(ticketInfoID);
               if (ti.seatPosition[seatNum - 1] == '0')
               {
                   //该座位没有被坐 这里使用的是StringBuilder

                   StringBuilder str = new StringBuilder(ti.seatPosition);

                   str[seatNum - 1] = '1';
                   ti.seatPosition = str.ToString();
                   ti.remainseat = ti.remainseat - 1;

                   session.Save(ti);
                   it.Commit();
                   return true;
               }
               else
               {
                   return false;
               }

           }
           catch (Exception ex)
           {
              
               it.Rollback();
           }


            return false;
        }

        /// ////////////////////////////
        public bool undoTicket(int seatNum, string ticketInfoID)
        {

            var it = session.BeginTransaction();

            try
            {
                ticket ti = session.Get<ticket>(ticketInfoID);
                if (ti.seatPosition[seatNum - 1] == '1')
                {
                    //该座位确实给卖出 这里使用的是StringBuilder

                    StringBuilder str = new StringBuilder(ti.seatPosition);

                    str[seatNum - 1] = '0';
                    ti.seatPosition = str.ToString();
                    ti.remainseat = ti.remainseat + 1;

                    session.Save(ti);
                    it.Commit();
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {

                it.Rollback();
            }


            return false;
        }
        //////////////////////


        public ticket getTicketByNameAndTime(string endPos, string date)
        {
            ICriteria ic = session.CreateCriteria(typeof(ticket)).Add(Restrictions.Eq("endpos", endPos)).Add(Restrictions.Eq("date", date));

            IList<ticket> tk = ic.List<ticket>();

            if (tk.Count == 0)
                return null;

            return tk[0];   
        }
    }
}
