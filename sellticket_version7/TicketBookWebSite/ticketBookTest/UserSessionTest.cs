﻿using DAL.Handle;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace ticketBookTest
{
    
    
    /// <summary>
    ///这是 UserSessionTest 的测试类，旨在
    ///包含所有 UserSessionTest 单元测试
    ///</summary>
    [TestClass()]
    public class UserSessionTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，上下文提供
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
        //编写测试时，还可使用以下特性:
        //
        //使用 ClassInitialize 在运行类中的第一个测试前先运行代码
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //使用 ClassCleanup 在运行完类中的所有测试后再运行代码
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //使用 TestInitialize 在运行每个测试前先运行代码
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //使用 TestCleanup 在运行完每个测试后运行代码
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///ValidateUser 的测试
        ///</summary>
        [TestMethod()]
        public void ValidateUserTest()
        {
            UserSession session = new UserSession(); // TODO: 初始化为适当的值
            
            
            
            string username = "xulei"; // TODO: 初始化为适当的值
            string password = "456789"; // TODO: 初始化为适当的值
            //bool expected = false; // TODO: 初始化为适当的值
            string role;

            bool actual = session.ValidateUser(username, password,out role);
            Assert.AreEqual(true, actual);

            //Assert.Inconclusive("验证此测试方法的正确性。");
        }

        /// <summary>
        ///changePassword 的测试
        ///</summary>
        [TestMethod()]
        public void changePasswordTest()
        {
            UserSession target = new UserSession(); // TODO: 初始化为适当的值
            string username = "xulei"; // TODO: 初始化为适当的值
            string password = "456789"; // TODO: 初始化为适当的值
            string newPassword = "050126"; // TODO: 初始化为适当的值
            bool expected = true; // TODO: 初始化为适当的值
            bool actual;
            actual = target.changePassword(username, password, newPassword);
            Assert.AreEqual(expected, actual);
            target.changePassword(username, newPassword, password);
            //Assert.Inconclusive("验证此测试方法的正确性。");
        }

        /// <summary>
        ///deleteUserInfo 的测试
        ///</summary>
        [TestMethod()]
        public void deleteUserInfoTest()
        {
            UserSession target = new UserSession(); // TODO: 初始化为适当的值
            string username = "haha"; // TODO: 初始化为适当的值
            bool expected = true; // TODO: 初始化为适当的值
            bool actual;
            
            

            actual = target.deleteUserInfo(username);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("验证此测试方法的正确性。");
        }
    }
}
