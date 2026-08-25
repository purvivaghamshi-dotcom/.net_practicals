<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationDemo.aspx.cs" Inherits="WebControlsDemo.ValidationDemo" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Validation Controls Demo</title>
</head>
<body>

<form id="form1" runat="server">

    <h2>Validation Controls Demo</h2>

    Name:
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator
        ID="RequiredName"
        runat="server"
        ControlToValidate="txtName"
        ErrorMessage="Name is required"
        ForeColor="Red">
        *
    </asp:RequiredFieldValidator>

    <br /><br />

    Age:
    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

    <asp:RangeValidator
        ID="RangeAge"
        runat="server"
        ControlToValidate="txtAge"
        MinimumValue="18"
        MaximumValue="60"
        Type="Integer"
        ErrorMessage="Age must be between 18 and 60"
        ForeColor="Red">
        *
    </asp:RangeValidator>

    <br /><br />

    Email:
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

    <asp:RegularExpressionValidator
        ID="EmailValidator"
        runat="server"
        ControlToValidate="txtEmail"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ErrorMessage="Enter a valid email"
        ForeColor="Red">
        *
    </asp:RegularExpressionValidator>

    <br /><br />

    Password:
    <asp:TextBox
        ID="txtPassword"
        runat="server"
        TextMode="Password">
    </asp:TextBox>

    <br /><br />

    Confirm Password:
    <asp:TextBox
        ID="txtConfirmPassword"
        runat="server"
        TextMode="Password">
    </asp:TextBox>

    <asp:CompareValidator
        ID="ComparePassword"
        runat="server"
        ControlToValidate="txtConfirmPassword"
        ControlToCompare="txtPassword"
        ErrorMessage="Passwords do not match"
        ForeColor="Red">
        *
    </asp:CompareValidator>

    <br /><br />

    <asp:Button
        ID="btnSubmit"
        runat="server"
        Text="Submit"
        OnClick="btnSubmit_Click" />

    <br /><br />

    <asp:ValidationSummary
        ID="ValidationSummary1"
        runat="server"
        ForeColor="Red" />

    <asp:Label
        ID="lblMessage"
        runat="server"
        ForeColor="Green">
    </asp:Label>

</form>

</body>
</html>