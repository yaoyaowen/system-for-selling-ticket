<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogoAndShow.aspx.cs" Inherits="TicketBookWebSite.Manager.LogoAndShow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css"> 
        
        
        
        body
        {

                     background-image:url(image/head.jpg);
                     background-repeat:no-repeat;
                    }
                               
        #header {

        margin: 0px auto;
        position: relative;
        height:84px;

        }

        ul#navBar {
        height: 84px;
        margin: 0px;
        padding: 0px;
        list-style-type: none;
        position: absolute;
        bottom: 0px;
        right: 0px;
        }
        
        
        
        
        ul#navBar li {
        float: left;
        display: block;
        width: auto;
        height: 84px;
        padding: 0px 0px 0px 1px;
        
        }
        
        
        ul#navBar li a:link, ul#navBar li a:visited {
        float: left;
        display: block;
        width: auto;
        margin: 0px;
        height: 34px;
        padding: 25px 10px; 
        text-decoration: none;
        font-weight: normal;
        font-family: Cambria, "Times New Roman", Georgia, Times, serif;
        font-size: 1.8em;
        color: #000000;
        border: none;
        }



        ul#navBar li a:hover {
        color: #ff0000;
        background-color:#fffacd; 
        }   

    </style>




    
    <script type="text/javascript" >
    //点击以后退出
        function logout() {
            parent.location.href = "about://blank";
        }

    </script>




</head>
<body>
	<div id="header">
        

        <div  style="font-size:xx-large;  text-align:center; font-family: 楷体;">
            长途汽车网站
        </div>

        
        <ul id="navBar">
            <li><a href="../logout.aspx" onclick="logout()">安全退出</a></li>            
        </ul>

    </div>

            
</body>
</html>
