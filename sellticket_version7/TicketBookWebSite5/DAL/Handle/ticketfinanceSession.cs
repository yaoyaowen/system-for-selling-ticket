using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using DAL.Handle;
using NHibernate;

using Castle;
using Castle.Components;
using Castle.DynamicProxy;
using NHibernate.Criterion;



namespace DAL.Handle
{
    public class ticketfinanceSession : IDisposable
    {
        private ISession session;

        public ticketfinanceSession()
        {
            session = NHibernateHelper.GetSession();
        }



        public void Dispose()
        {
            session.Dispose();
        }


        public ticketfinance getTicketfinanceByID(string id)
        {
            //object iterm = session.Get(id);
            return (ticketfinance)session.Get<ticketfinance>(id);
        }


        public bool saveTicketfinance(ticketfinance tk)
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




        public bool addTicketfinance(ticketfinance Tic)
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


/// ///////////////////////////////////////////
        public bool addundoNUM( string ID,int status)
        {

            var it = session.BeginTransaction();

            try
            {
                ticketfinance ti = session.Get<ticketfinance>(ID);
                ti.undoNum = ti.undoNum + 1;
                ti.income = ti.income - (float)( ti.price*SaleOff.adjust(status)*SaleOff.adjust(5));
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
        //////////////////////
        public bool addsellNUM(string ID,int status)
        {

            var it = session.BeginTransaction();

            try
            {
                ticketfinance ti = session.Get<ticketfinance>(ID);
                ti.sellNum = ti.sellNum + 1;
                ti.income = ti.income+ti.price*(SaleOff.adjust(status));
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
        //////////////////////

        //////////////////////
        public bool addsellNUM( int num,string ID )
        {

            var it = session.BeginTransaction();

            try
            {
                ticketfinance ti = session.Get<ticketfinance>(ID);
                ti.sellNum = ti.sellNum + num;
                ti.income = ti.income + ti.price*num*SaleOff.adjust(4);
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
        //////////////////////





    }
}
