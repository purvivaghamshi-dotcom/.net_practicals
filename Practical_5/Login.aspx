<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Practical_5.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Student Login</title>

    <style>
        body {
    body {
    font-family: Arial;
    background-color: #f2f4f7;
    font-size: 24px;
}

        .login-box {
            width: 400px;
            margin: 80px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #cccccc;
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-bottom: 25px;
        }

        h2 {
    text-align: center;
    color: #333333;
    margin-bottom: 25px;
    font-size: 30px;
}

        .input-box {
    width: 100%;
    padding: 12px;
    box-sizing: border-box;
    border: 1px solid #cccccc;
    border-radius: 5px;
    font-size: 24px;
}

        .login-btn {
            width: 100%;
            padding: 11px;
            margin-top: 25px;
            background-color: #4a6cf7;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #3451c7;
        }

        .message {
            display: block;
            text-align: center;
            color: red;
            margin-top: 15px;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

        <div class="login-box">

            <h2>Student Login</h2>

            <label>Name</label>

            <asp:TextBox ID="txtName"
                runat="server"
                CssClass="input-box">
            </asp:TextBox>


            <label>Email</label>

            <asp:TextBox ID="txtEmail"
                runat="server"
                CssClass="input-box">
            </asp:TextBox>


            <label>Password</label>

            <asp:TextBox ID="txtPassword"
                runat="server"
                CssClass="input-box"
                TextMode="Password">
            </asp:TextBox>


            <asp:Button ID="btnLogin"
                runat="server"
                Text="Login"
                CssClass="login-btn"
                OnClick="btnLogin_Click" />


            <asp:Label ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>

        </div>

    </form>

</body>

</html>