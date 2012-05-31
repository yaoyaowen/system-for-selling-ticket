<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSeller.aspx.cs" Inherits="TicketBookWebSite.Manager.EditSeller" %>

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
            SelectCommand="select * from userinfo where role = 'seller'" 
            DeleteCommand="delete * from userinfo where  ID =@ID" 
            InsertCommand="INSERT INTO userinfo(userName, passWord, Role) VALUES (@userName, @passWord, @role)" 
            UpdateCommand="UPDATE userinfo SET userName = @userName, passWord = @passWord WHERE (ID = @ID)">
        </asp:SqlDataSource>
    
    </div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>
                    <asp:Label ID="passWordLabel" runat="server" Text='<%# Eval("passWord") %>' />
                </td>
                <td>
                    <asp:Label ID="StatusLabel" runat="server" Text=<%# Eval("Status").ToString().Trim()=="1"?"当前在线":"当前不在线" %> />
                </td>
                <td>
                    <asp:Label ID="RoleLabel" runat="server" Text=<%# Eval("Role").ToString().Trim()=="seller"?"售票员":"管理员" %> />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="userNameTextBox" runat="server" 
                        Text='<%# Bind("userName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="passWordTextBox" runat="server" 
                        Text='<%# Bind("passWord") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RoleTextBox" runat="server" Text='<%# Bind("Role") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="">
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
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="userNameTextBox" runat="server" 
                        Text='<%# Bind("userName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="passWordTextBox" runat="server" 
                        Text='<%# Bind("passWord") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="RoleTextBox" runat="server" Text='<%# Bind("Role") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>   
                
                    <asp:Label ID="passWordLabel" runat=server Text='<%# Eval("passWord") %>'  />

                </td>
                <td>
                    <asp:Label ID="StatusLabel" runat="server" Text=<%# Eval("Status").ToString().Trim()=="1"?"当前在线":"当前不在线" %> />
                </td>
                <td>
                    <asp:Label ID="RoleLabel" runat="server" Text=<%# Eval("Role").ToString().Trim()=="seller"?"售票员":"管理员" %> />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" 
                            style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    </th>
                                <th runat="server">
                                    ID</th>
                                <th runat="server">
                                    userName</th>
                                <th runat="server">
                                    passWord</th>
                                <th runat="server">
                                    Status</th>
                                <th runat="server">
                                    Role</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="">
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
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                </td>
                <td>
                    <asp:Label ID="passWordLabel" runat="server" Text='<%# Eval("passWord") %>' />
                </td>
                <td>
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                </td>
                <td>
                    <asp:Label ID="RoleLabel" runat="server" Text='<%# Eval("Role") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
</body>
</html>
