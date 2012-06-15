using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace DAL
{
    public class SaleOff
    {
        static float person = (float)(1);
        static float student = (float)(0.5);
        static float soldier = (float)(0.7);
        static float group = (float)(0.8);
        static float undo = (float)(0.8);//退票只退8成的钱

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
}
