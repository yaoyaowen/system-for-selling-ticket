<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="undoTicket.aspx.cs" Inherits="TicketBookWebSite.seller.undoTicket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 73px;
        }        
        body
        {
             background-image:url(../image/right.jpg);
             background-repeat:no-repeat;
          }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 100%;
        }
        .style6
        {
            height: 23px;
            width: 307px;
        }
        .style7
        {
            width: 307px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="font-size: xx-large; background-color: #FFFFCC; clip: rect(auto, auto, auto, 100px);">
    
        退票操作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    <table class="style1">
        <tr>
            <td align="right" class="style7">
                &nbsp;班次编号ID</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style6">
                座位号</td>
            <td align="left" class="style2">
                <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td align="left">
                <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="role"
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="正常票" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="role"
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="学生票" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="role"
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="军人票" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td align="left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定退票" 
                    Width="198px" style="margin-bottom: 0px" />
            </td>
        </tr>
    </table>
    <table class="style3">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged" 
                    Width="199px"></asp:TextBox>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
