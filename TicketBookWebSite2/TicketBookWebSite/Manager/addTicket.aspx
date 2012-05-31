<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addTicket.aspx.cs" Inherits="TicketBookWebSite.Manager.addTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" src="../Scripts/jquery-1.4.1.js"></script>
        <script type="text/javascript">

            var hourFlag = 0;
            var minuteFlag = 0

            $(function () {

                $("#hour").click(function () {

                    if (hourFlag == 1) {
                        $("#selectUl").show();
                        return;
                    }

                    var i = 0;
                    while (i < 24) {
                        var temp = '<option value=' + i + '>' + i + '</option>';
                        $(temp).appendTo("#selectUl")
                        i++;
                    }
                    $("#selectUl").show();
                    hourFlag = 1;
                });

                $("#minute").click(function () {
                    if (minuteFlag == 1) {
                        $("#selectMinute").show();
                        return;
                    }

                    var i = 0;
                    while (i < 60) {
                        var temp = '<option value=' + i + '>' + i + '</option>';
                        $(temp).appendTo("#selectMinute");
                        i++;
                    }

                    minuteFlag = 1
                    $("#selectMinute").show();
                });


                //绑定事件  方式改变是触发
                //分钟数
                $("#selectMinute").change(function () {
                    $("#minute").val($("#selectMinute").find("option:selected").text());
                    $("#selectMinute").hide();
                });


                //小时数触发
                $("#selectUl").change(function () {
                    $("#hour").val($("#selectUl").find("option:selected").text());
                    $("#selectUl").hide();
                })



            });
        
        
        
        
        </script>


        <style type="text/css">
            ul
            {
                 list-style-type:none;
                }
            input
            {
                 
                }
        
        </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ul style="width:400">
           <li><label>出发地点：</label><input type=text id=StartPos runat=server /></li>
           <li><label>目的地点：</label><input type=text id=EndPos runat=server /></li>
           <li><label>发车日期：</label><input type="text" id="date" value="" runat=server /><asp:Calendar ID="Calendar1" runat="server" style=""></asp:Calendar></li>
           <li><label>发车时间: </label><input type=text id="hour" readonly="true" />点<select id="selectUl" style=" display:none"></select><input type=text id="minute"  readonly="true" />分<select id="selectMinute" style=" display:none"></select></li>
        
            
            <li><button id="submit" style="float:none;width:100px">提交</button></li>
        </ul>
    </div>

    </form>
</body>
</html>
