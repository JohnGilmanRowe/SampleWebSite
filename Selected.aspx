<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Selected.aspx.cs" Inherits="Selected" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="Content/MyStyle.css" rel="stylesheet" />
    <form id="form1" runat="server" >
    <div id="mydiv">
        <asp:Label ID="myLabel" runat="server"></asp:Label>
        <asp:SqlDataSource ID="MyDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [name] FROM [Colors] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="-1" Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [name], [id] FROM [Colors] WHERE ([id] &lt;&gt; @id)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="-1" Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true" DataTextField="name" DataValueField="id" Width="570px" Height="28px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" />
    </div>
    </form>
</body>
</html>


