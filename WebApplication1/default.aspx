<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>
<html xmlns="http://w3.org">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: #f9f9f9; }
        .form-container { max-width: 500px; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; font-weight: bold; margin-bottom: 5px; }
        .form-control { width: 100%; padding: 8px; box-sizing: border-box; border: 1px solid #ccc; border-radius: 4px; }
        .radio-list, .list-box { width: 100%; }
        .btn-container { margin-top: 20px; display: flex; gap: 10px; }
        .btn { padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-weight: bold; }
        .btn-submit { background-color: #007bff; color: white; }
        .btn-reset { background-color: #6c757d; color: white; }
        .display-label { margin-top: 20px; padding: 15px; background: #e9ecef; border-left: 5px solid #007bff; display: block; border-radius: 4px; }
        
        /* Profile Image Custom Size Settings */
        .image-preview { 
            width: 200px;        /* Set your custom width here */
            height: 200px;       /* Set your custom height here */
            object-fit: cover;   /* Prevents stretching or distortion */
            border-radius: 8px;  /* Slightly rounds the corners */
            display: block; 
            margin-bottom: 10px; 
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>User Registration</h2>

            <!-- 1. Display Image with custom profile size -->
            <div class="form-group">
                <label>Profile Image:</label>
                <asp:Image ID="imgProfile" runat="server" ImageUrl="C:\Users\Admin\OneDrive\Pictures\134051038366953642.jpg" CssClass="image-preview" AlternateText="Profile Picture" />
            </div>

            <!-- 2. Text Input -->
            <div class="form-group">
                <label>Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
            </div>

            <!-- 3. Password Input -->
            <div class="form-group">
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password"></asp:TextBox>
            </div>

            <!-- 4. Date Input -->
            <div class="form-group">
                <label>Date of Birth:</label>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- 5. Radio Buttons (3 Items) -->
            <div class="form-group">
                <label>Select Gender:</label>
                <asp:RadioButtonList ID="rblGender" runat="server" CssClass="radio-list">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <!-- 6. List Box (4 Items) -->
            <div class="form-group">
                <label>Select City (Choose One):</label>
                <asp:ListBox ID="lbCity" runat="server" Rows="4" CssClass="form-control list-box">
                    <asp:ListItem Text="New York" Value="New York"></asp:ListItem>
                    <asp:ListItem Text="London" Value="London"></asp:ListItem>
                    <asp:ListItem Text="Tokyo" Value="Tokyo"></asp:ListItem>
                    <asp:ListItem Text="Paris" Value="Paris"></asp:ListItem>
                </asp:ListBox>
            </div>

            <!-- 7. Image Buttons (2 Items) -->
            <div class="form-group">
                <label>Quick Action Shortcuts:</label>
                <asp:ImageButton ID="imgBtnFeature1" runat="server" ImageUrl="C:\Users\Admin\OneDrive\Pictures\Screenshots\ost 4 3.png" AlternateText="Action A" OnClick="ImgBtnFeature1_Click" Width="40px" />
                <asp:ImageButton ID="imgBtnFeature2" runat="server" ImageUrl="C:\Users\Admin\OneDrive\Pictures\Screenshots\ost 4 2.png" AlternateText="Action B" OnClick="ImgBtnFeature2_Click" Width="40px" style="margin-left: 10px;" />
            </div>

            <!-- 8. Buttons (Submit & Reset) -->
            <div class="btn-container">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-submit" OnClick="BtnSubmit_Click" />
                <!-- Client-side JavaScript clears fields and hides the output label immediately -->
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-reset" OnClientClick="this.form.reset(); document.getElementById('lblDisplay').innerHTML = ''; document.getElementById('lblDisplay').style.display = 'none'; return false;" />
            </div>

            <!-- 9. Label to display entered data -->
            <div class="form-group">
                <asp:Label ID="lblDisplay" runat="server" CssClass="display-label" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
