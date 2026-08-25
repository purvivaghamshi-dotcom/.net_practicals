<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyperLinkDemo.aspx.cs" Inherits="WebControlsDemo.HyperLinkDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>HyperLink Demo</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>HyperLink Demo</h2>

        <asp:HyperLink
            ID="HyperLink1"
            runat="server"
            Text="Open Google"
            NavigateUrl="https://www.google.com"
            Target="_blank">
        </asp:HyperLink>

        <br /><br />

        <asp:HyperLink
            ID="HyperLink2"
            runat="server"
            Text="Open Microsoft"
            NavigateUrl="https://www.microsoft.com"
            Target="_blank">
        </asp:HyperLink>

    </form>
</body>
</html>