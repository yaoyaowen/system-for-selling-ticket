<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogoAndShow.aspx.cs" Inherits="TicketBookWebSite.seller.LogoAndShow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        body
        {
             background:url(../image/bg.png) repeat-x;
            
            }
        
        
#header {
height: 84px;
width: 994px;
margin: 0px auto;
position: relative;
}
        
#logo {
position: absolute;
top: 18px;
left: 12px;
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
background: url(images/nav_bg.png) repeat-x top left;
font-family: Cambria, "Times New Roman", Georgia, Times, serif;
font-size: 1.8em;
color: #ededed;
border: none;
}
ul#navBar li.current a:link, ul#navBar li.current a:visited {
background: url(images/nav_hover.png) repeat-x top left;
}
ul#navBar li a:hover {
color: #fff;
text-decoration: none;
background: url(images/nav_hover.png) repeat-x top left;
border: none;
}         
    
    </style>


</head>
<body>
	<div id="header">
    	<a href="#"><img src="../image/logo.png" title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
        <ul id="navBar">
        	<li class="current"><a href=~/"index.html">Home</a></li>
            <li><a href="../logout.aspx">LogOut</a></li>            
        </ul>
    </div>
</body>
</html>
