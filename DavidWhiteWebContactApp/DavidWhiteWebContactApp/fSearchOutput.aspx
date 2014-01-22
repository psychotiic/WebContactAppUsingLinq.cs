<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fSearchOutput.aspx.cs" Inherits="DavidWhiteWebContactApp.SearchOutput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Results</title>
    <style type="text/css">
        .logout
        {
            float:right;
            font-family:Britannic;
            background-color: black;
            color:lime;
            border:outset;
            border-width:thick;
            
        }
        .pageStyle
        {
            font-family:Britannic;
            font-size:x-large;
            color:lime;
            background-color:black;
        }
        .buttons
        {
            font-family:Britannic;
            background-color: black;
            color:lime;
            border:outset;
            border-width:medium;
        }
    </style>
</head>
<body class="pageStyle">
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Keys" DataSourceID="LinqDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="KeysLabel" runat="server" Text='<%# Eval("Keys") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Home_PhoneLabel" runat="server" Text='<%# Eval("Home_Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Cell_PhoneLabel" runat="server" Text='<%# Eval("Cell_Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="KeysLabel1" runat="server" Text='<%# Eval("Keys") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Home_PhoneTextBox" runat="server" Text='<%# Bind("Home_Phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Cell_PhoneTextBox" runat="server" Text='<%# Bind("Cell_Phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Home_PhoneTextBox" runat="server" Text='<%# Bind("Home_Phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Cell_PhoneTextBox" runat="server" Text='<%# Bind("Cell_Phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="KeysLabel" runat="server" Text='<%# Eval("Keys") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Home_PhoneLabel" runat="server" Text='<%# Eval("Home_Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Cell_PhoneLabel" runat="server" Text='<%# Eval("Cell_Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Keys</th>
                                    <th runat="server">First_Name</th>
                                    <th runat="server">Last_Name</th>
                                    <th runat="server">Home_Phone</th>
                                    <th runat="server">Cell_Phone</th>
                                    <th runat="server">Email</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="KeysLabel" runat="server" Text='<%# Eval("Keys") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Home_PhoneLabel" runat="server" Text='<%# Eval("Home_Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Cell_PhoneLabel" runat="server" Text='<%# Eval("Cell_Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DavidWhiteWebContactApp.DataClasses1DataContext" EntityTypeName="" TableName="contactInfos"
             Where='"[First Name]" = "TextBox1"'>
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
