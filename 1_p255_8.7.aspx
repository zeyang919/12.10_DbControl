<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_p255_8.7.aspx.cs" Inherits="_12._10_DbControl._1_p255_8__7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select 雇员ID, 姓氏+''+名字 as 姓名,城市 from 雇员 " DeleteCommandType="Text"></asp:SqlDataSource>
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="雇员ID" HeaderText="雇员ID" InsertVisible="False" ReadOnly="True" SortExpression="雇员ID" />
                    <asp:HyperLinkField DataNavigateUrlFields="雇员ID" DataNavigateUrlFormatString="雇员详情.aspx?id={0}" DataTextField="姓名" />
                    <asp:BoundField DataField="城市" HeaderText="城市" SortExpression="城市" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
