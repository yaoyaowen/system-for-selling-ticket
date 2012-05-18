using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate;
using NHibernate.Cfg;

using sell_ticket;

namespace sell_ticket
{
    public class NHibernateHelper : IDisposable
    {
        public static ISessionFactory _sessionFactory;

        private static ISessionFactory GetSessionFactory()
        {
            return (new Configuration()).Configure().BuildSessionFactory();
        }

        public static ISession GetSession()
        {
            if (_sessionFactory == null)
            {
                _sessionFactory = GetSessionFactory();
            }
            return _sessionFactory.OpenSession();
        }


        public void Dispose()
        {
            _sessionFactory.Dispose();
        }
    }
}
