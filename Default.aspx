<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <link href="Content/MyStyle.css" rel="stylesheet" />
    <form id="form1" runat="server">
    <div id="mydiv">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="MyDS" AutoPostBack="true" DataTextField="name" DataValueField="id" Width="570px" Height="28px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
    </asp:RadioButtonList>
        <asp:SqlDataSource  ID="MyDS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [name], [id] FROM [Colors]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>

    