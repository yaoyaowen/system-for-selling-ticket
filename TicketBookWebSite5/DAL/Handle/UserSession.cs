using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using NHibernate;
using Castle;
using Castle.Components;
using Castle.DynamicProxy;
using NHibernate.Criterion;

namespace DAL.Handle
{
    public class UserSession
    {
        private ISession session;

        public UserSession()
        {
            session = NHibernateHelper.GetSession();
        }


        public bool addUserInfo(UserInfo ur)
        {
            ITransaction it = session.BeginTransaction();

            try
            {
                session.Save(ur);
                it.Commit();
                return true;
            }
            catch (Exception)
            {
                it.Rollback();
            }

            return false;
        }


        public bool changePassword(string username, string password,string newPassword)
        {


            ICriteria crit = session.CreateCriteria(typeof(UserInfo)).Add(Restrictions.Eq("userName", username)).Add(Restrictions.Eq("passWord", password));

            if (crit.List<UserInfo>().Count == 0)
                return false;

            UserInfo ur = crit.List<UserInfo>()[0];
            ur.passWord = newPassword;


            ITransaction it = session.BeginTransaction();

            try
            {
                session.Update(ur);
                it.Commit();
                return true;
            }
            catch (Exception)
            {
                it.Rollback();
                return false;
            }

            //return false;
        }



        public bool ValidateUser(string username, string password,out string role)
        {

            role = "";
           ICriteria crit =  session.CreateCriteria(typeof(UserInfo)).Add(Restrictions.Eq("userName", username)).Add(Restrictions.Eq("passWord",password));

           if (crit.List<UserInfo>().Count == 1)
           {
               role = crit.List<UserInfo>()[0].Role;
               return true;
           }

            return false;
        }


        public bool changeStatus(string userName,int status)
        {
            ICriteria ic = session.CreateCriteria(typeof(UserInfo)).Add(Restrictions.Eq("userName", userName));
            if (ic.List<UserInfo>().Count == 0)
            return false;
            else
            {
                UserInfo ur =  ic.List<UserInfo>()[0];
                ur.Status = Convert.ToString(status);

                session.Save(ur);
                session.Flush();
                return true;
            }
        }



        public bool deleteUserInfo(string username)
        {
            ICriteria ic = session.CreateCriteria(typeof(UserInfo)).Add(Restrictions.Eq("userName", username));

            if (ic.List<UserInfo>().Count == 0)
                return false;

            UserInfo ur = ic.List<UserInfo>()[0];

            if (ur.Role == "manager")
                return false;

            var it = session.BeginTransaction();
            try
            {
                session.Delete(ur);
                it.Commit();
                return true;
            }
            catch
            {
                it.Rollback();
                return false;
            }
        }

    }
}
