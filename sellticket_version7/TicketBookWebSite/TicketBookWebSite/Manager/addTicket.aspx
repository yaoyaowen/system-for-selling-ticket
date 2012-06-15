<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addTicket.aspx.cs" Inherits="TicketBookWebSite.Manager.addTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.20.custom.min.js">
    </script>
    <link href="../Styles/jquery-ui-1.8.20.custom.css" rel="stylesheet" type="text/css" />
    <link href="../Scripts/jquery.ui.timepicker.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery.ui.timepicker.js" type="text/javascript"></script>

        <script type="text/javascript">
        $(function(){
            $("#date").datepicker({
                minDate: new Date(),
                dateFormat: 'yy-mm-dd'
                });
          

            $("#time").timepicker({

            });  
        });
           
        
        
        </script>


        <style type="text/css">
            ul
            {
                 list-style-type:none;
                }
        
            body
            {
                 background-image:url(../image/right.jpg);
                 background-repeat:no-repeat;
                }
        
        
        </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
          <form action="" method="post">
            <ul style="width:400">
                    <li><label>ID：</label><input type="text" name="id" /></li>
                   <li><label>目的地点：</label><input type="text" name="EndPos" /></li>
                   <li><label>发车日期：</label><input type="text" name="date"  id="date" /></li>
                   <li><label>发车时间：</label><input type="text"  name="time" id="time" /></li>
                   <li><label>总共位数：</label><input type="text"  name="site" id="" /></li>
                   <li><label>价格：</label><input type="text"  name="money" id="" /></li>
                   <li><input type="submit"  value="提交"/></li>
            </ul>
        </form>
    </div>

    </form>
</body>
</html>
