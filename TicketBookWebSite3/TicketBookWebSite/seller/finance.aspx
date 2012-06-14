<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="finance.aspx.cs" Inherits="TicketBookWebSite.finance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
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
    <div align="center" 
        style="font-family: 华文隶书; background-color: #FFCC99; font-size: xx-large">
    
        财务信息</div>
    <table class="style1">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ticjettestforcodeConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ticjettestforcodeConnectionString.ProviderName %>" 
                    SelectCommand="select * from ticketfiance"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="startPointLabel" runat="server" 
                                    Text='<%# Eval("startPoint") %>' />
                            </td>
                            <td>
                                <asp:Label ID="endPointLabel" runat="server" Text='<%# Eval("endPoint") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sellNumLabel" runat="server" Text='<%# Eval("sellNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="undoNumLabel" runat="server" Text='<%# Eval("undoNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="incomeLabel" runat="server" Text='<%# Eval("income") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                            </td>
                            <td>
                                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="startPointTextBox" runat="server" 
                                    Text='<%# Bind("startPoint") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="endPointTextBox" runat="server" 
                                    Text='<%# Bind("endPoint") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="sellNumTextBox" runat="server" Text='<%# Bind("sellNum") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="undoNumTextBox" runat="server" Text='<%# Bind("undoNum") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="incomeTextBox" runat="server" Text='<%# Bind("income") %>' />
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
                                <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="清除" />
                            </td>
                            <td>
                                <asp:TextBox ID="IDTextBox0" runat="server" Text='<%# Bind("ID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="startPointTextBox0" runat="server" 
                                    Text='<%# Bind("startPoint") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="endPointTextBox0" runat="server" 
                                    Text='<%# Bind("endPoint") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="sellNumTextBox0" runat="server" 
                                    Text='<%# Bind("sellNum") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="undoNumTextBox0" runat="server" 
                                    Text='<%# Bind("undoNum") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="priceTextBox0" runat="server" Text='<%# Bind("price") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="incomeTextBox0" runat="server" Text='<%# Bind("income") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Label ID="IDLabel0" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="startPointLabel0" runat="server" 
                                    Text='<%# Eval("startPoint") %>' />
                            </td>
                            <td>
                                <asp:Label ID="endPointLabel0" runat="server" Text='<%# Eval("endPoint") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sellNumLabel0" runat="server" Text='<%# Eval("sellNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="undoNumLabel0" runat="server" Text='<%# Eval("undoNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="priceLabel0" runat="server" Text='<%# Eval("price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="incomeLabel0" runat="server" Text='<%# Eval("income") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server">
                                                ID</th>
                                            <th runat="server">
                                                startPoint</th>
                                            <th runat="server">
                                                endPoint</th>
                                            <th runat="server">
                                                sellNum</th>
                                            <th runat="server">
                                                undoNum</th>
                                            <th runat="server">
                                                price</th>
                                            <th runat="server">
                                                income</th>
                                        </tr>
                                        <tr ID="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" 
                                    style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="startPointLabel1" runat="server" 
                                    Text='<%# Eval("startPoint") %>' />
                            </td>
                            <td>
                                <asp:Label ID="endPointLabel1" runat="server" Text='<%# Eval("endPoint") %>' />
                            </td>
                            <td>
                                <asp:Label ID="sellNumLabel1" runat="server" Text='<%# Eval("sellNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="undoNumLabel1" runat="server" Text='<%# Eval("undoNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="priceLabel1" runat="server" Text='<%# Eval("price") %>' />
                            </td>
                            <td>
                                <asp:Label ID="incomeLabel1" runat="server" Text='<%# Eval("income") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
