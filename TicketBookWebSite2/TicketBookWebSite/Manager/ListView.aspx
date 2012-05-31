<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="TicketBookWebSite.Manager.ListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
         
         body
         {
              background-color: rgb(164,208,252);
              border:1;
              padding:0;
             }
         
        ul
        {
            list-style-type:none;
            position:relative;
        }
        
        li
        {
  
           background-position:left;
           width:200px;
            text-align:right;
            list-style-image:url(arrow.png)
            }
        
   
            a
            {
                text-decoration:none;
                font-size:24px;
                }

            a:hover
            {
                font-weight:bold;
                color:Red; 
                background-color:Orange;
                width:130px;
                height:30px;
                border-color:Red;
                }
    
    
    </style>

    <script type="text/javascript" src="../Scripts/jquery-1.4.1.js"></script>

    <script type="text/javascript">


        //js脚本实现跳转

        $(function () {
            $("a").click(function () {

                //alert("clicked");

                $(window.parent.document).find("#mainFrame").attr("src",$(this).attr("href"));

                return false;
            });

            


        });
    </script>



</head>
<body>
    <form id="form1" runat="server">
    <div>
                        <ul style=" margin-top:0px; padding:0" id="uiControl">
                            <li><a target="mainFrame" href="addTicket.aspx">增加车站班次</a></li> 
                            <li><a target="mainFrame" href="dealTicket.aspx">调整车票价格</a></li>
                            <li><a target="mainFrame" href="#">暂时取消班次</a></li>
                            <li><a target="mainFrame" href="EditSeller.aspx">&nbsp&nbsp&nbsp&nbsp编辑售票员</a></li>
                       </ul>
    </div>
    </form>
    </body>
</html>
