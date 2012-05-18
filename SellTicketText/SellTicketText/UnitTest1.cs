using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using sell_ticket;

using NHibernate;
using NHibernate.Cfg;
using NHibernate.Dialect;
using NHibernate.Driver;


//using NHibernate.Mapping.ByCode;

namespace SellTicketText
{
    
    [TestClass]
    public class UnitTest1
    {
        public UnitTest1()
        {
           
        }

        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，该上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region 附加测试特性
        //
        // 编写测试时，可以使用以下附加特性:
        //
        // 在运行类中的第一个测试之前使用 ClassInitialize 运行代码
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // 在类中的所有测试都已运行之后使用 ClassCleanup 运行代码
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // 在运行每个测试之前，使用 TestInitialize 来运行代码
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // 在每个测试运行完之后，使用 TestCleanup 来运行代码
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void TestMethod1()
        {


            seat Seat = new seat();
            NHibernateSample _sample = new NHibernateSample(NHibernateHelper.GetSession());

            var tempTicket = new ticket();
            tempTicket.id = "xulei789";
            tempTicket.startpos = "庆";
            tempTicket.endpos = "珠海";
            tempTicket.ticketMoney = 50;
            tempTicket.time = "13:26";
            tempTicket.totalseat = 100;
            tempTicket.remainseat = 100;
            tempTicket.date = "2012-05-15";

            _sample.CreateTicket(tempTicket);
            ticket ticket2 = _sample.GetTicketById("zhazhu001");
            int ticketMoney = ticket2.ticketMoney;
            Assert.AreEqual(60, ticketMoney);
        }


        //[TestMethod]
        //public void TestMethod2()
        //{


        //    seat Seat = new seat();
        //    NHibernateSample _sample = new NHibernateSample(NHibernateHelper.GetSession());

        //    var tempSeat = new seat();
        //    tempSeat.Id = "zhuzha001000";
        //    tempSeat.num = 60;
        //    tempSeat.num1 = 0;
        //    tempSeat.num2 = 0;
        //    tempSeat.num3 = 0;
        //    tempSeat.num4 = 0;
        //    tempSeat.num5 = 0;
        //    tempSeat.num6 = 0;
        //    tempSeat.num7 = 0;
        //    tempSeat.num8 = 0;
        //    tempSeat.num9 = 0;
        //    tempSeat.num10 = 0;
            
        //    _sample.CreateSeat(tempSeat);
        //    seat seat2 = _sample.GetSeatById("zhazhu001010");
        //    int SeatNum = seat2.num;
        //    Assert.AreEqual(10, SeatNum);
        //}
    }
}
