<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pra4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ONLINE EVENT REGISTRATION</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            background-color: white;
            padding: 15px;
            margin: 20px auto;
            width: 80%;
        }

        td {
            padding: 8px;
        }

        .label {
            width: 180px;
            font-weight: bold;
        }

        .input {
            width: 300px;
        }

        .error {
            color: red;
        }

        .result {
            color: green;
            font-weight: bold;
            line-height: 1.8;
        }

        .button {
            padding: 10px 25px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }

        .button:hover {
            background-color: #555;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <h1>ONLINE EVENT REGISTRATION</h1>

    <table>

        <!-- Full Name -->
        <tr>
            <td class="label">Full Name</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Enter Name"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <!-- Email -->
        <tr>
            <td class="label">Email</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="input"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Enter Email"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1"
                    runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Invalid Email"
                    ForeColor="Red"
                    Display="Dynamic"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">
                </asp:RegularExpressionValidator>
            </td>
        </tr>

        <!-- Mobile -->
        <tr>
            <td class="label">Mobile</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="input"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Enter Mobile"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <br />

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2"
                    runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Enter 10 Digit Mobile"
                    ForeColor="Red"
                    Display="Dynamic"
                    ValidationExpression="^[0-9]{10}$">
                </asp:RegularExpressionValidator>
            </td>
        </tr>

        <!-- College -->
        <tr>
            <td class="label">College</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="input"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4"
                    runat="server"
                    ControlToValidate="TextBox6"
                    ErrorMessage="Enter College"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <!-- Department -->
        <tr>
            <td class="label">Department</td>
            <td>
                <asp:RadioButton
                    ID="RadioComputer"
                    runat="server"
                    GroupName="Department"
                    Text="Computer" />
                <br />

                <asp:RadioButton
                    ID="RadioIT"
                    runat="server"
                    GroupName="Department"
                    Text="IT" />
                <br />

                <asp:RadioButton
                    ID="RadioMechanical"
                    runat="server"
                    GroupName="Department"
                    Text="Mechanical" />
                <br />

                <asp:RadioButton
                    ID="RadioCivil"
                    runat="server"
                    GroupName="Department"
                    Text="Civil" />
            </td>
        </tr>

        <!-- Event -->
        <tr>
            <td class="label">Event</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select Event</asp:ListItem>
                    <asp:ListItem>PT</asp:ListItem>
                    <asp:ListItem>YOGA</asp:ListItem>
                    <asp:ListItem>LEB</asp:ListItem>
                    <asp:ListItem>CLASS</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <!-- Gender -->
        <tr>
            <td class="label">Gender</td>
            <td>
                <asp:RadioButton
                    ID="RadioMale"
                    runat="server"
                    GroupName="Gender"
                    Text="Male" />

                &nbsp;&nbsp;

                <asp:RadioButton
                    ID="RadioFemale"
                    runat="server"
                    GroupName="Gender"
                    Text="Female" />
            </td>
        </tr>

        <!-- Skills -->
        <tr>
            <td class="label">Skills</td>
            <td>
                <asp:CheckBox
                    ID="Checkbox1"
                    runat="server"
                    Text="C" />
                <br />

                <asp:CheckBox
                    ID="Checkbox3"
                    runat="server"
                    Text="C#" />
                <br />

                <asp:CheckBox
                    ID="Checkbox4"
                    runat="server"
                    Text="Java" />
                <br />

                <asp:CheckBox
                    ID="Checkbox5"
                    runat="server"
                    Text=".NET" />
            </td>
        </tr>

        <!-- Address -->
        <tr>
            <td class="label">Address</td>
            <td>
                <asp:TextBox
                    ID="TextArea1"
                    runat="server"
                    TextMode="MultiLine"
                    Rows="4"
                    Columns="30">
                </asp:TextBox>
            </td>
        </tr>

        <!-- Terms -->
        <tr>
            <td class="label">Terms</td>
            <td>
                <asp:CheckBox
                    ID="Checkbox6"
                    runat="server"
                    Text="I Accept Terms &amp; Conditions" />
            </td>
        </tr>

        <!-- Register -->
        <tr>
            <td></td>
            <td>
                <asp:Button
                    ID="Button1"
                    runat="server"
                    Text="Register"
                    CssClass="button"
                    OnClick="Button1_Click" />
            </td>
        </tr>

        <!-- Result -->
        <tr>
            <td></td>
            <td>
                <asp:Label
                    ID="DBResult"
                    runat="server"
                    CssClass="result">
                </asp:Label>
            </td>
        </tr>

    </table>

</form>

</body>
</html>