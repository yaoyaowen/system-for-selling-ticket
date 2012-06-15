<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ticketHandler.aspx.cs" Inherits="TicketBookWebSite.Manager.ticketHandler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ticjettestforcodeConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ticjettestforcodeConnectionString.ProviderName %>" 
           
            SelectCommand="SELECT ID,seatPosition,startPos, endPos, ticketMoney, totalsit, remainsit, `DATE`, `time` FROM ticketinfo" 
            UpdateCommand="update ticketinfo set ticketMoney = @ticketMoney where id =@ID"
            DeleteCommand="delete ticketinfo where id=@ID" 
            ></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
