<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="雇员详情.aspx.cs" Inherits="_12._10_DbControl.雇员详情" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select 雇员ID,姓氏,名字,职务,尊称,出生日期,地址,城市,地区 from 雇员 where 雇员ID=@ID">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ID" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    雇员ID:
                    <asp:Label ID="雇员IDLabel1" runat="server" Text='<%# Eval("雇员ID") %>' />
                    <br />
                    姓氏:
                    <asp:TextBox ID="姓氏TextBox" runat="server" Text='<%# Bind("姓氏") %>' />
                    <br />
                    名字:
                    <asp:TextBox ID="名字TextBox" runat="server" Text='<%# Bind("名字") %>' />
                    <br />
                    职务:
                    <asp:TextBox ID="职务TextBox" runat="server" Text='<%# Bind("职务") %>' />
                    <br />
                    尊称:
                    <asp:TextBox ID="尊称TextBox" runat="server" Text='<%# Bind("尊称") %>' />
                    <br />
                    出生日期:
                    <asp:TextBox ID="出生日期TextBox" runat="server" Text='<%# Bind("出生日期") %>' />
                    <br />
                    地址:
                    <asp:TextBox ID="地址TextBox" runat="server" Text='<%# Bind("地址") %>' />
                    <br />
                    城市:
                    <asp:TextBox ID="城市TextBox" runat="server" Text='<%# Bind("城市") %>' />
                    <br />
                    地区:
                    <asp:TextBox ID="地区TextBox" runat="server" Text='<%# Bind("地区") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    姓氏:
                    <asp:TextBox ID="姓氏TextBox" runat="server" Text='<%# Bind("姓氏") %>' />
                    <br />
                    名字:
                    <asp:TextBox ID="名字TextBox" runat="server" Text='<%# Bind("名字") %>' />
                    <br />
                    职务:
                    <asp:TextBox ID="职务TextBox" runat="server" Text='<%# Bind("职务") %>' />
                    <br />
                    尊称:
                    <asp:TextBox ID="尊称TextBox" runat="server" Text='<%# Bind("尊称") %>' />
                    <br />
                    出生日期:
                    <asp:TextBox ID="出生日期TextBox" runat="server" Text='<%# Bind("出生日期") %>' />
                    <br />
                    地址:
                    <asp:TextBox ID="地址TextBox" runat="server" Text='<%# Bind("地址") %>' />
                    <br />
                    城市:
                    <asp:TextBox ID="城市TextBox" runat="server" Text='<%# Bind("城市") %>' />
                    <br />
                    地区:
                    <asp:TextBox ID="地区TextBox" runat="server" Text='<%# Bind("地区") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    雇员ID:
                    <asp:Label ID="雇员IDLabel" runat="server" Text='<%# Eval("雇员ID") %>' />
                    <br />
                    姓氏:
                    <asp:Label ID="姓氏Label" runat="server" Text='<%# Bind("姓氏") %>' />
                    <br />
                    名字:
                    <asp:Label ID="名字Label" runat="server" Text='<%# Bind("名字") %>' />
                    <br />
                    职务:
                    <asp:Label ID="职务Label" runat="server" Text='<%# Bind("职务") %>' />
                    <br />
                    尊称:
                    <asp:Label ID="尊称Label" runat="server" Text='<%# Bind("尊称") %>' />
                    <br />
                    出生日期:
                    <asp:Label ID="出生日期Label" runat="server" Text='<%# Bind("出生日期") %>' />
                    <br />
                    地址:
                    <asp:Label ID="地址Label" runat="server" Text='<%# Bind("地址") %>' />
                    <br />
                    城市:
                    <asp:Label ID="城市Label" runat="server" Text='<%# Bind("城市") %>' />
                    <br />
                    地区:
                    <asp:Label ID="地区Label" runat="server" Text='<%# Bind("地区") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
