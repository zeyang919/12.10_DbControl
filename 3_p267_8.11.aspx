<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_p267_8.11.aspx.cs" Inherits="_12._10_DbControl._3_p267_8__11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select 雇员ID, 姓氏,名字,地址,城市,国家,家庭电话,备注 from 雇员 " DeleteCommandType="Text"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" GridLines="None" DataSourceID="SqlDataSource1">
                <HeaderStyle BackColor ="Silver" />
                <Columns>

                    <asp:TemplateField HeaderText="雇员">
                        <ItemTemplate>
                            <b>
                            <%# Eval("雇员ID") %>-
                            <%# Eval("姓氏") %>
                            <%# Eval("名字") %>
                            <hr />
                            </b>
                            <small>
                            <%# Eval("地址") %>- <br />
                            <%# Eval("城市") %>,<%# Eval("国家") %> <br />
                            <%# Eval("家庭电话") %> <br />
                            <%# Eval("备注") %> <br />
                            </small>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
