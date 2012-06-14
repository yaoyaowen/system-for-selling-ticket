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

namespace DAL
{
    public class preferentialSession : IDisposable
    {
        private ISession session;

       public preferentialSession()
        {
            session = NHibernateHelper.GetSession();
        }



        public void Dispose()
        {
            session.Dispose();
        }


        public preferential getpreferentialByID(string id)
        {

            return (preferential)session.Get<preferential>(id);
        }


        public bool saveTicket(preferential tk)
        {
            ITransaction it = session.BeginTransaction();
            try
            {
                session.Update(tk);
                it.Commit();
                return true;
            }
            catch (Exception e)
            {
                it.Rollback();
                return true;
            }

        }


    }

   }
    

     
