<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewDemo.aspx.cs" Inherits="WebControlsDemo.GridViewDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>GridView Demo</title>
</head>
<body>

<form id="form1" runat="server">

    <h2>GridView Demo</h2>

    <asp:GridView
        ID="GridView1"
        runat="server"
        AutoGenerateColumns="true"
        BorderWidth="1"
        CellPadding="8">
    </asp:GridView>

</form>

</body>
</html>