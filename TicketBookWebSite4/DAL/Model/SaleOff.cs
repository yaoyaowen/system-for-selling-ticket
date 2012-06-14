using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL.Handle;
using DAL;

namespace DAL
{
    public class SaleOff
    {
       
        /// ////////////////////////
        static SaleOff instance = null;
        static readonly object padlock = new object();
        SaleOff()
        {

        }
        public static SaleOff Instance
        {
            get
            {
                lock (padlock)
                {
                    if (instance == null)
                    {
                        instance = new SaleOff();
                    }
                    return instance;
                }
            }
        }




        /// ////////////////////////////////////////
        

        static preferential manager = new  preferentialSession().getpreferentialByID("manager");
        static float person = manager.person;
        static float student = manager.student;
        static float soldier = manager.soldier;
        static float group = manager.group;
        static float undo = manager.undo;//退票只退8成的钱
     public   static float adjust(int status)
        {
            switch (status)
            {
                case 1: return person;

                case 2: return student;

                case 3: return soldier;

                case 4: return group;

                case 5:return undo;

            }



            return 0;
        }

    }


    ///////////////////////////////////////////


    //////////////////////////////////////////
   
   

}
