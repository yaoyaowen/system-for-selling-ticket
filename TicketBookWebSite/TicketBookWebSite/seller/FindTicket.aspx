<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindTicket.aspx.cs" Inherits="TicketBookWebSite.FindTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">

            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="地点:"></asp:Label>
                <asp:TextBox ID="endPosTextBox" runat="server"></asp:TextBox>
            </ContentTemplate>

            <Triggers>

            </Triggers>          

        </asp:UpdatePanel>


                <asp:Label ID="Label2" runat="server" Text="时间:"></asp:Label>
                <asp:TextBox ID="timeTextBox" runat="server"></asp:TextBox>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <asp:Label ID="Label3" runat="server" Text="座位:"></asp:Label>
                <asp:DropDownList ID="seatRemain" runat="server">
                    <asp:ListItem Text=" " Value=" "></asp:ListItem>
                </asp:DropDownList>
        <br />
        <br />
        
    </div>
    <br />
    </form>
</body>
</html>