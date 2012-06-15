<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dealTicket.aspx.cs" Inherits="TicketBookWebSite.Manager.dealTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ticjettestforcodeConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ticjettestforcodeConnectionString.ProviderName %>" 
            
            
            SelectCommand="SELECT ID,seatPosition,startPos, endPos, ticketMoney, totalsit, remainsit, `DATE`, `time` FROM ticketinfo" 
            UpdateCommand="update ticketinfo set ticketMoney = @ticketMoney  where id =@ID;"
            
            ></asp:SqlDataSource>
    
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" >
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="startPosLabel" runat="server" Text='<%# Eval("startPos") %>' />
                </td>
                <td>
                    <asp:Label ID="endPosLabel" runat="server" Text='<%# Eval("endPos") %>' />
                </td>
                <td>
                    <asp:Label ID="ticketMoneyLabel" runat="server" 
                        Text='<%# Eval("ticketMoney") %>' />
                </td>
                <td>
                    <asp:Label ID="totalsitLabel" runat="server" Text='<%# Eval("totalsit") %>' />
                </td>
                <td>
                    <asp:Label ID="remainsitLabel" runat="server" Text='<%# Eval("remainsit") %>' />
                </td>
                <td>
                    <asp:Label ID="DATELabel" runat="server" Text='<%# Eval("DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' Enabled=false />
                </td>

                <td>
                    <asp:TextBox ID="startPosTextBox" runat="server" 
                        Text='<%# Bind("startPos") %>'  Enabled=false/>
                </td>
                <td>
                    <asp:TextBox ID="endPosTextBox" runat="server" Text='<%# Bind("endPos") %>'  Enabled=false/>
                </td>
                <td>
                    <asp:TextBox ID="ticketMoneyTextBox" runat="server" 
                        Text='<%# Bind("ticketMoney") %>' />
                </td>
                <td>
                    <asp:TextBox ID="totalsitTextBox" runat="server" 
                        Text='<%# Bind("totalsit") %>'  Enabled=false/>
                </td>
                <td>
                    <asp:TextBox ID="remainsitTextBox" runat="server" 
                        Text='<%# Bind("remainsit") %>' Enabled=false />
                </td>
                <td>
                    <asp:TextBox ID="DATETextBox" runat="server" Text='<%# Bind("DATE") %>'  Enabled=false />
                </td>
                <td>
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' Enabled=false />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                </td>

                <td>
                    <asp:TextBox ID="startPosTextBox" runat="server" 
                        Text='<%# Bind("startPos") %>' />
                </td>
                <td>
                    <asp:TextBox ID="endPosTextBox" runat="server" Text='<%# Bind("endPos") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ticketMoneyTextBox" runat="server" 
                        Text='<%# Bind("ticketMoney") %>' />
                </td>
                <td>
                    <asp:TextBox ID="totalsitTextBox" runat="server" 
                        Text='<%# Bind("totalsit") %>' />
                </td>
                <td>
                    <asp:TextBox ID="remainsitTextBox" runat="server" 
                        Text='<%# Bind("remainsit") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DATETextBox" runat="server" Text='<%# Bind("DATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>

                <td>
                    <asp:Label ID="startPosLabel" runat="server" Text='<%# Eval("startPos") %>' />
                </td>
                <td>
                    <asp:Label ID="endPosLabel" runat="server" Text='<%# Eval("endPos") %>' />
                </td>
                <td>
                    <asp:Label ID="ticketMoneyLabel" runat="server" 
                        Text='<%# Eval("ticketMoney") %>' />
                </td>
                <td>
                    <asp:Label ID="totalsitLabel" runat="server" Text='<%# Eval("totalsit") %>' />
                </td>
                <td>
                    <asp:Label ID="remainsitLabel" runat="server" Text='<%# Eval("remainsit") %>' />
                </td>
                <td>
                    <asp:Label ID="DATELabel" runat="server" Text='<%# Eval("DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" style=" overflow:hidden;">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1"
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    ID</th>
                                <th runat="server">
                                    startPos</th>
                                <th runat="server">
                                    endPos</th>
                                <th runat="server">
                                    ticketMoney</th>
                                <th runat="server">
                                    totalsit</th>
                                <th runat="server">
                                    remainsit</th>
                                <th runat="server">
                                    DATE</th>
                                <th runat="server">
                                    time</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="startPosLabel" runat="server" Text='<%# Eval("startPos") %>' />
                </td>
                <td>
                    <asp:Label ID="endPosLabel" runat="server" Text='<%# Eval("endPos") %>' />
                </td>
                <td>
                    <asp:Label ID="ticketMoneyLabel" runat="server" 
                        Text='<%# Eval("ticketMoney") %>' />
                </td>
                <td>
                    <asp:Label ID="totalsitLabel" runat="server" Text='<%# Eval("totalsit") %>' />
                </td>
                <td>
                    <asp:Label ID="remainsitLabel" runat="server" Text='<%# Eval("remainsit") %>' />
                </td>
                <td>
                    <asp:Label ID="DATELabel" runat="server" Text='<%# Eval("DATE") %>' />
                </td>
                <td>
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
</body>
</html>


<script type="text/javascript" src="../Scripts/jquery-1.4.1.js">
    

</script>

<script type="text/javascript">

    var back_color;
    $(function () {
        $("tr").has("td").hover(function () {
            back_color = $(this).css("background-color");
            $(this).css("background-color", "orange");

        }, function () {
            $(this).css("background-color", back_color);

        });



        $("tr").has("td").click(function () {

            var text = $(this).find(":submit").val();

            $(this).find(":submit").first().submit();

            //e.stopPropagation(); 

        });

    });


</script>