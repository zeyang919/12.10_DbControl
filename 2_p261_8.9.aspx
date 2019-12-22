<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_p261_8.9.aspx.cs" Inherits="_12._10_DbControl._2_p261_8__9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select 雇员ID, 姓氏,名字,职务 from 雇员 " DeleteCommandType="Text"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="雇员ID">
                <Columns>
                    <asp:CommandField HeaderText="查询订单" ShowSelectButton="True" />
                    <asp:BoundField DataField="雇员ID" HeaderText="雇员ID" InsertVisible="False" ReadOnly="True" SortExpression="雇员ID" ApplyFormatInEditMode="True" />
                    <asp:BoundField DataField="姓氏" HeaderText="姓氏" SortExpression="姓氏" />
                    <asp:BoundField DataField="名字" HeaderText="名字" SortExpression="名字" />
                    <asp:BoundField DataField="职务" HeaderText="职务" SortExpression="职务" />
                </Columns>
                
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
