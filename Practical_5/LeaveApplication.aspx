<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveApplication.aspx.cs" Inherits="Practical_5.LeaveApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Leave Application</title>

    <style>

        body {
    font-family: Arial;
    background-color: #f2f4f7;
    font-size: 24px;
}

        .main-box {
            width: 650px;
            margin: 40px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #cccccc;
        }

        h2 {
    text-align: center;
    color: #333333;
    margin-bottom: 30px;
    font-size: 30px;
}


        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .input-box {
    width: 100%;
    padding: 12px;
    box-sizing: border-box;
    border: 1px solid #cccccc;
    border-radius: 5px;
    font-size: 24px;
}

        .date-box {
            width: 200px;
            padding: 9px;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }

        .submit-btn {
            width: 100%;
            padding: 11px;
            margin-top: 25px;
            background-color: #4a6cf7;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #3451c7;
        }

        .result {
            margin-top: 25px;
            padding: 20px;
            background-color: #f5f7ff;
            border-radius: 8px;
        }

        .success {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }

        .error {
            color: red;
            font-weight: bold;
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="main-box">

            <h2>Student Leave Application</h2>


            <!-- Student Name -->

            <label>Student Name</label>

            <asp:TextBox ID="txtStudentName"
                runat="server"
                CssClass="input-box">
            </asp:TextBox>


            <!-- Roll Number -->

            <label>Roll Number</label>

            <asp:TextBox ID="txtRollNo"
                runat="server"
                CssClass="input-box">
            </asp:TextBox>


            <!-- Email -->

            <label>Email</label>

            <asp:TextBox ID="txtEmail"
                runat="server"
                CssClass="input-box"
                ReadOnly="true">
            </asp:TextBox>


            <!-- Leave Type -->

            <label>Type of Leave</label>

            <asp:DropDownList ID="ddlLeaveType"
                runat="server"
                CssClass="input-box">

                <asp:ListItem Value="">Select Leave Type</asp:ListItem>

                <asp:ListItem Value="Sick Leave">
                    Sick Leave
                </asp:ListItem>

                <asp:ListItem Value="Casual Leave">
                    Casual Leave
                </asp:ListItem>

                <asp:ListItem Value="Emergency Leave">
                    Emergency Leave
                </asp:ListItem>

                <asp:ListItem Value="Personal Leave">
                    Personal Leave
                </asp:ListItem>

            </asp:DropDownList>


            <!-- From Date -->

            <label>From Date</label>

            <asp:TextBox ID="txtFromDate"
                runat="server"
                CssClass="date-box"
                TextMode="Date">
            </asp:TextBox>


            <!-- To Date -->

            <label>To Date</label>

            <asp:TextBox ID="txtToDate"
                runat="server"
                CssClass="date-box"
                TextMode="Date">
            </asp:TextBox>


            <!-- Reason -->

            <label>Reason for Leave</label>

            <asp:TextBox ID="txtReason"
                runat="server"
                CssClass="input-box"
                TextMode="MultiLine"
                Rows="5">
            </asp:TextBox>


            <!-- Submit -->

            <asp:Button ID="btnSubmit"
                runat="server"
                Text="Submit Leave Application"
                CssClass="submit-btn"
                OnClick="btnSubmit_Click" />


            <!-- Result -->

            <asp:Panel ID="pnlResult"
                runat="server"
                CssClass="result"
                Visible="false">

                <asp:Label ID="lblSuccess"
                    runat="server"
                    CssClass="success">
                </asp:Label>

                <br />
                <br />

                <asp:Label ID="lblDetails"
                    runat="server">
                </asp:Label>

            </asp:Panel>

        </div>

    </form>

</body>

</html>