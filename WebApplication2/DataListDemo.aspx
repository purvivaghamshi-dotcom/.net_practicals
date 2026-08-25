<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListDemo.aspx.cs" Inherits="WebControlsDemo.DataListDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>DataList Demo</title>
</head>
<body>

<form id="form1" runat="server">

    <h2>DataList Demo</h2>

    <asp:DataList
        ID="DataList1"
        runat="server"
        RepeatColumns="2"
        RepeatDirection="Horizontal">

        <ItemTemplate>

            <div style="border:1px solid black;
                        padding:15px;
                        margin:10px;
                        width:200px;">

                <b>ID:</b>
                <%# Eval("ID") %>

                <br />

                <b>Name:</b>
                <%# Eval("Name") %>

                <br />

                <b>Course:</b>
                <%# Eval("Course") %>

                <br />

                <b>City:</b>
                <%# Eval("City") %>

            </div>

        </ItemTemplate>

    </asp:DataList>

</form>

</body>
</html>