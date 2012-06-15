<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="TicketBookWebSite.Manager.manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>车站后台管理</title>
        
    <style type="text/css">
        ul
        {
            list-style-type:none;
            position:relative;
            top:-90px;
        }
        
        li
        {
           background: url(arrow.png) no-repeat top left;
           background-position:left;
           width:120px;
            text-align:right;
            }
        
   
            a
            {
                text-decoration:none;
            
                }

            a:hover
            {
                font-weight:bold;
                color:Red; 
                }
    
    </style>

    <script type="text/javascript" src="../Scripts/jquery-1.4.1.js"></script>

    <script type="text/javascript">

    </script>


</head>
<body style="width:960px;">
    <div style="margin: 0px; padding: 0px; float:right; display:block; height:30px">Hello Manager <a href="ashx/logout.ashx">安全退出</a></div> 
    
    <div>

    <hr style=" top:40px; position:absolute" />

    <table style=" position:absolute;top:55px">
    <tr><td style="width:200px ">
                       <ul style=" margin-top:0px; padding:0" id="uiControl">
                            <li><a  href="about.aspx">增加车站班次</a></li> 
                            <li><a  href="#">调整车票价格</a></li>
                            <li><a  href="#">暂时取消班次</a></li>
                       </ul>
         </td>
    
    <td style="width:760px ">
        
        <!--
        <iframe id="ShowArea" nane="ShowArea" scrolling="no" 
               style="float:right; width: 750px; height: 371px; margin:0; border:0">
    
    
    
        </iframe>-->
     </td>
     </tr>
       </table>   
    </div>
   


</body>
</html>
