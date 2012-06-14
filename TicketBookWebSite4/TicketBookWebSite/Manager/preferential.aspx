<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="preferential.aspx.cs" Inherits="TicketBookWebSite.Manager.preferential" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 249px;
        }
        .style3
        {
            width: 249px;
            height: 20px;
        }
        .style4
        {
            height: 20px;
        }
        body
        {
             background-image:url(../image/right.jpg);
             background-repeat: no-repeat;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="font-family: 华文隶书; font-size: xx-large; background-color: #FFCC99">
    
        调整优惠信息</div>
    <table class="style1">
        <tr>
            <td class="style3">
                正常票折扣（如无输入1.0）</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                学生票折扣（如0.5）</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                军人票折扣（如0.7）</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                团体票折扣（如0.8）</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                退票折扣（如0.8只退8成）</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" 
                    Width="149px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
